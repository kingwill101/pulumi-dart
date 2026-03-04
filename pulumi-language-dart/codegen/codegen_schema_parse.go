package codegen

import (
	"encoding/json"
	"fmt"
	"sort"
	"strings"

	"github.com/pkg/errors"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

// makeRawResourceOutputPropertySpecs builds deterministic output property
// descriptors for a raw resource schema while applying output-type coercions.
func makeRawResourceOutputPropertySpecs(
	resource rawResourceSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
	externalRefs *externalRefResolver,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(resource.Properties))
	for name := range resource.Properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(resource.Required)
	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		if propertyName == "urn" {
			continue
		}
		if !resource.IsComponent && propertyName == "id" {
			continue
		}

		property := resource.Properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		if resource.IsComponent {
			isRequired = false
		}
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			false,
			externalRefs,
		)
		typeSpec = coerceOutputCollectionType(typeSpec)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              propertyName,
			FieldName:         propertyFieldName(propertyName, usedFieldNames),
			Comment:           strings.TrimSpace(property.Description),
			Required:          isRequired,
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	if len(fields) == 0 {
		return nil
	}
	return fields
}

// schemaObjectPropertiesFromRef returns the canonical property set for a schema
// object, preferring input-shape properties when the object represents inputs.
func schemaObjectPropertiesFromRef(objectType *schema.ObjectType) []*schema.Property {
	if objectType == nil {
		return nil
	}
	if objectType.InputShape != nil && (objectType.IsInputShape() || len(objectType.Properties) == 0) {
		return objectType.InputShape.Properties
	}
	return objectType.Properties
}

// schemaPropertiesWithoutSelf removes the synthetic "__self__" marker property
// used by provider schemas.
func schemaPropertiesWithoutSelf(properties []*schema.Property) []*schema.Property {
	if len(properties) == 0 {
		return nil
	}
	filtered := make([]*schema.Property, 0, len(properties))
	for _, property := range properties {
		if property == nil || property.Name == "__self__" {
			continue
		}
		filtered = append(filtered, property)
	}
	if len(filtered) == 0 {
		return nil
	}
	return filtered
}

// rawObjectSpecPropertiesWithoutSelf removes "__self__" from raw property and
// required collections and returns a stable required-order slice.
func rawObjectSpecPropertiesWithoutSelf(properties map[string]rawPropertyTypeSpec, required []string) (map[string]rawPropertyTypeSpec, []string) {
	if len(properties) == 0 {
		return map[string]rawPropertyTypeSpec{}, nil
	}

	filteredProperties := make(map[string]rawPropertyTypeSpec, len(properties))
	filteredRequired := make([]string, 0, len(required))
	for key, value := range properties {
		if key == "__self__" {
			continue
		}
		filteredProperties[key] = value
	}
	for _, property := range required {
		if property != "__self__" {
			filteredRequired = append(filteredRequired, property)
		}
	}
	sort.Strings(filteredRequired)
	return filteredProperties, filteredRequired
}

// parsePackageSchema parses a provider schema JSON document into the normalized
// packageSchema model used by Dart code generation.
func parsePackageSchema(schemaJSON, outputDir string) (*packageSchema, error) {
	var rawSpec rawPackageSchema
	if err := json.Unmarshal([]byte(schemaJSON), &rawSpec); err != nil {
		return nil, fmt.Errorf("failed to parse package schema: %w", err)
	}
	if rawSpec.Name == "" {
		return nil, errors.New("package schema is missing name")
	}

	spec := &packageSchema{
		Name:          rawSpec.Name,
		Namespace:     rawSpec.Namespace,
		Version:       rawSpec.Version,
		Description:   strings.TrimSpace(rawSpec.Description),
		License:       strings.TrimSpace(rawSpec.License),
		Homepage:      strings.TrimSpace(rawSpec.Homepage),
		Repository:    strings.TrimSpace(rawSpec.Repository),
		Keywords:      append([]string(nil), rawSpec.Keywords...),
		Resources:     map[string]packageResourceSpec{},
		Functions:     map[string]packageFunctionSpec{},
		Config:        nil,
		Enums:         []packageEnumSpec{},
		ObjectClasses: []packageObjectClassSpec{},
	}

	usedClassNamesByModule := map[string]map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}
	externalRefs := newExternalRefResolver(rawSpec.Name, outputDir)

	typeTokens := make([]string, 0, len(rawSpec.Types))
	for token := range rawSpec.Types {
		typeTokens = append(typeTokens, token)
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		if len(typeSpec.Enum) > 0 {
			typeName := uniqueQualifiedClassName(
				tokenElementName(token),
				tokenModulePath(token),
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				"",
				"Enum",
			)
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   dartTypeFromRawTypeName(typeSpec.Type),
				UseReferenceType: true,
			}
			continue
		}
		if typeSpec.Type == "object" {
			typeName := ""
			useReferenceType := false
			if len(typeSpec.Properties) > 0 {
				typeName = uniqueQualifiedClassName(
					tokenElementName(token),
					tokenModulePath(token),
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					"",
					"Type",
				)
				useReferenceType = true
			}
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "object",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   "Map<String, dynamic>",
				UseReferenceType: useReferenceType,
			}
		}
	}

	// Reserve resource type names up front so refs to #/resources/... can be
	// strongly typed and stable while we build the remaining schema model.
	resourceSpecByToken := map[string]rawResourceSpec{}
	for token, resource := range rawSpec.Resources {
		resourceSpecByToken[token] = resource
	}
	if rawSpec.Provider != nil {
		providerToken := strings.TrimSpace(rawSpec.Provider.Token)
		if providerToken == "" {
			providerToken = fmt.Sprintf("pulumi:providers:%s", rawSpec.Name)
		}
		provider := *rawSpec.Provider
		provider.IsProvider = true
		if existing, ok := resourceSpecByToken[providerToken]; ok {
			existing.IsProvider = true
			existing.RequiredInputs = appendDistinctStringSet(existing.RequiredInputs, provider.RequiredInputs)
			existing.InputProperties = mergeRawPropertySpecs(existing.InputProperties, provider.InputProperties)
			existing.Properties = mergeRawPropertySpecs(existing.Properties, provider.Properties)
			existing.Methods = mergeRawMethods(existing.Methods, provider.Methods)
			resourceSpecByToken[providerToken] = existing
		} else {
			resourceSpecByToken[providerToken] = provider
		}
	}
	resourceTokens := make([]string, 0, len(resourceSpecByToken))
	for token := range resourceSpecByToken {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedClassNamesByModule, modulePath))
		namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "resource",
			Name:             className,
			CanonicalName:    canonicalTypeName(tokenElementName(token)),
			UnderlyingType:   "dynamic",
			UseReferenceType: true,
		}
	}

	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch namedType.Kind {
		case "enum":
			if enumSpec := makeRawEnumSpec(namedType.Name, tokenModulePath(token), typeSpec); enumSpec != nil {
				enumSpec.CanonicalName = namedType.CanonicalName
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case "object":
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildRawObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				typeSpec.Description,
				typeSpec.Properties,
				typeSpec.Required,
				namedTypeRefs,
				true,
				false,
				externalRefs,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	if len(rawSpec.Config.Variables) > 0 {
		configClassName := uniqueClassName(
			toDartClassName(rawSpec.Name)+"Config",
			moduleScopedTypeNameSet(usedClassNamesByModule, "config"),
		)
		if configClass := buildRawObjectClassSpec(
			configClassName,
			"config",
			rawSpec.Config.Description,
			rawSpec.Config.Variables,
			rawSpec.Config.Required,
			namedTypeRefs,
			true,
			false,
			externalRefs,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	for _, token := range resourceTokens {
		resource := resourceSpecByToken[token]
		resourceBaseName := resourceTypeBaseNameFromToken(token)
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			IsProvider:  isProviderResourceToken(token) || resource.IsProvider,
			Comment:     strings.TrimSpace(resource.Description),
		}
		if classSpec := makeRawObjectClassSpec(
			resourceBaseName,
			tokenModulePath(token),
			fmt.Sprintf("The set of arguments for %s.", resourceBaseName),
			resource.InputProperties,
			resource.RequiredInputs,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
			namedTypeRefs,
			true,
			true,
			externalRefs,
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}
		if resource.StateInputs != nil {
			stateProperties, stateRequired := rawObjectSpecPropertiesWithoutSelf(
				resource.StateInputs.Properties,
				resource.StateInputs.Required,
			)
			if classSpec := makeRawObjectClassSpec(
				resourceBaseName,
				tokenModulePath(token),
				fmt.Sprintf("Input properties used for looking up and filtering %s resources.", resourceBaseName),
				stateProperties,
				stateRequired,
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				namedTypeRefs,
				true,
				true,
				externalRefs,
				"State",
				"ResourceState",
			); classSpec != nil {
				classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "State")
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
				resourceSpec.StateClass = classSpec.ClassName
			}
		}

		methodNames := make([]string, 0, len(resource.Methods))
		for methodName := range resource.Methods {
			methodNames = append(methodNames, methodName)
		}
		sort.Strings(methodNames)
		methodSpecs := make([]packageResourceMethodSpec, 0, len(methodNames))
		for _, methodName := range methodNames {
			methodToken := strings.TrimSpace(resource.Methods[methodName])
			method := packageResourceMethodSpec{
				Name:  methodName,
				Token: methodToken,
			}
			function, hasFunction := rawSpec.Functions[methodToken]
			if hasFunction {
				method.Comment = strings.TrimSpace(function.Description)
			}

			methodBaseName := resourceBaseName + toDartClassName(methodName)
			if method.Name == "" {
				method.Name = tokenElementName(method.Token)
				if method.Name == "" {
					method.Name = "invoke"
				}
				methodBaseName = resourceBaseName + toDartClassName(method.Name)
			}

			if hasFunction && function.Inputs != nil {
				inputProperties, inputRequired := rawObjectSpecPropertiesWithoutSelf(
					function.Inputs.Properties,
					function.Inputs.Required,
				)
				if classSpec := makeRawObjectClassSpec(
					methodBaseName,
					tokenModulePath(token),
					fmt.Sprintf("Arguments for %s.%s.", resourceBaseName, method.Name),
					inputProperties,
					inputRequired,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					namedTypeRefs,
					true,
					true,
					externalRefs,
					"Args",
					"MethodArgs",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(method.Name), "Args")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					method.ArgsClass = classSpec.ClassName
				}
			}

			if hasFunction && function.Outputs != nil {
				if classSpec := makeRawObjectClassSpec(
					methodBaseName,
					tokenModulePath(token),
					fmt.Sprintf("Result data returned by %s.%s.", resourceBaseName, method.Name),
					function.Outputs.Properties,
					function.Outputs.Required,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					namedTypeRefs,
					true,
					false,
					externalRefs,
					"Result",
					"MethodResult",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(method.Name), "Result")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					method.ResultClass = classSpec.ClassName
				}
				method.HasReturn = true
			}

			methodSpecs = append(methodSpecs, method)
		}
		resourceSpec.Methods = methodSpecs
		resourceSpec.OutputProperties = makeRawResourceOutputPropertySpecs(resource, namedTypeRefs, externalRefs)
		spec.Resources[token] = resourceSpec
	}

	functionTokens := make([]string, 0, len(rawSpec.Functions))
	for token := range rawSpec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)

	for _, token := range functionTokens {
		function := rawSpec.Functions[token]
		var inputProperties map[string]rawPropertyTypeSpec
		var inputRequired []string
		if function.Inputs != nil {
			inputProperties = function.Inputs.Properties
			inputRequired = function.Inputs.Required
		}
		var outputProperties map[string]rawPropertyTypeSpec
		var outputRequired []string
		if function.Outputs != nil {
			outputProperties = function.Outputs.Properties
			outputRequired = function.Outputs.Required
		}

		functionSpec := packageFunctionSpec{
			Comment: strings.TrimSpace(function.Description),
			HasArgs: len(inputProperties) > 0,
		}
		base := toDartClassName(tokenElementName(token))
		if classSpec := makeRawObjectClassSpec(
			base,
			tokenModulePath(token),
			fmt.Sprintf("Arguments for %s.", functionNameFromToken(token, map[string]int{})),
			inputProperties,
			inputRequired,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
			namedTypeRefs,
			true,
			true,
			externalRefs,
			"Args",
			"InvokeArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ArgsClass = classSpec.ClassName
		}
		if classSpec := makeRawObjectClassSpec(
			base,
			tokenModulePath(token),
			fmt.Sprintf("Result data returned by %s.", functionNameFromToken(token, map[string]int{})),
			outputProperties,
			outputRequired,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
			namedTypeRefs,
			true,
			false,
			externalRefs,
			"Result",
			"InvokeResult",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Result")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ResultClass = classSpec.ClassName
		}
		spec.Functions[token] = functionSpec
	}

	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec, nil
}
