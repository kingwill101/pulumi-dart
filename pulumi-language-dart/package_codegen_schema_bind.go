package main

import (
	"fmt"
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func packageSchemaFromPackage(pkg *schema.Package) *packageSchema {
	version := ""
	if pkg.Version != nil {
		version = pkg.Version.String()
	}

	spec := &packageSchema{
		Name:             pkg.Name,
		Namespace:        pkg.Namespace,
		Version:          version,
		Description:      strings.TrimSpace(pkg.Description),
		License:          strings.TrimSpace(pkg.License),
		Homepage:         strings.TrimSpace(pkg.Homepage),
		Repository:       strings.TrimSpace(pkg.Repository),
		Keywords:         append([]string(nil), pkg.Keywords...),
		Parameterization: nil,
		Resources:        map[string]packageResourceSpec{},
		Functions:        map[string]packageFunctionSpec{},
		Config:           nil,
		Enums:            []packageEnumSpec{},
		ObjectClasses:    []packageObjectClassSpec{},
	}

	if pkg.Parameterization != nil {
		pluginVersion := pkg.Parameterization.BaseProvider.Version.String()
		packageVersion := version
		if packageVersion == "" {
			packageVersion = pluginVersion
		}
		if pluginVersion == "" {
			pluginVersion = packageVersion
		}
		if pluginVersion == "" {
			pluginVersion = "0.0.1"
		}
		if packageVersion == "" {
			packageVersion = pluginVersion
		}

		spec.Parameterization = &packageParameterizationSpec{
			PluginName:     pkg.Parameterization.BaseProvider.Name,
			PluginVersion:  pluginVersion,
			PackageName:    pkg.Name,
			PackageVersion: packageVersion,
			DownloadURL:    pkg.PluginDownloadURL,
			Value:          append([]byte(nil), pkg.Parameterization.Parameter...),
		}
	}

	usedClassNamesByModule := map[string]map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}

	typeTokens := make([]string, 0, len(pkg.Types))
	typesByToken := map[string]schema.Type{}
	for _, typ := range pkg.Types {
		switch t := typ.(type) {
		case *schema.EnumType:
			if t.Token == "" {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		case *schema.ObjectType:
			if t.Token == "" || t.IsInputShape() {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		}
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typ := typesByToken[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		switch t := typ.(type) {
		case *schema.EnumType:
			typeName := uniqueQualifiedClassName(
				tokenElementName(token),
				tokenModulePath(token),
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				"",
				"Enum",
			)
			underlyingType := dartTypeSpecFromSchemaType(t.ElementType, nil, false, pkg.Name).DartType
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   underlyingType,
				UseReferenceType: true,
			}
		case *schema.ObjectType:
			typeName := ""
			useReferenceType := false
			if len(t.Properties) > 0 {
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

	for _, token := range typeTokens {
		typ := typesByToken[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch t := typ.(type) {
		case *schema.EnumType:
			if enumSpec := makeSchemaEnumSpec(namedType.Name, tokenModulePath(token), t, pkg.Name); enumSpec != nil {
				enumSpec.CanonicalName = namedType.CanonicalName
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case *schema.ObjectType:
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				t.Comment,
				t.Properties,
				namedTypeRefs,
				true,
				true,
				pkg.Name,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	// Section: schema-bound resource ref typing
	//
	// BindSpec can still surface resource refs in property types. Reserve their
	// generated class names here so token refs stay strongly typed.
	reservedResourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		if resource == nil || resource.Token == "" {
			continue
		}
		reservedResourceTokens = append(reservedResourceTokens, resource.Token)
	}
	sort.Strings(reservedResourceTokens)
	for _, token := range reservedResourceTokens {
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

	if len(pkg.Config) > 0 {
		configClassName := uniqueClassName(
			toDartClassName(pkg.Name)+"Config",
			moduleScopedTypeNameSet(usedClassNamesByModule, "config"),
		)
		if configClass := buildObjectClassSpec(
			configClassName,
			"config",
			fmt.Sprintf("Configuration values for the %s package.", pkg.Name),
			pkg.Config,
			namedTypeRefs,
			true,
			false,
			pkg.Name,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	resourceByToken := map[string]*schema.Resource{}
	resourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		resourceByToken[resource.Token] = resource
		resourceTokens = append(resourceTokens, resource.Token)
	}
	if pkg.Provider != nil {
		providerToken := strings.TrimSpace(pkg.Provider.Token)
		if providerToken == "" {
			providerToken = fmt.Sprintf("pulumi:providers:%s", pkg.Name)
		}
		if _, exists := resourceByToken[providerToken]; !exists {
			resourceByToken[providerToken] = pkg.Provider
			resourceTokens = append(resourceTokens, providerToken)
		}
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		resource := resourceByToken[token]
		resourceBaseName := resourceTypeBaseNameFromToken(resource.Token)
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			IsProvider:  isProviderResourceToken(resource.Token) || resource.IsProvider,
			Comment:     strings.TrimSpace(resource.Comment),
		}
		if classSpec := makeObjectClassSpec(
			resourceBaseName,
			tokenModulePath(resource.Token),
			fmt.Sprintf("The set of arguments for %s.", resourceBaseName),
			resource.InputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}

		if stateClass := makeObjectClassSpec(
			resourceBaseName,
			tokenModulePath(resource.Token),
			fmt.Sprintf("Input properties used for looking up and filtering %s resources.", resourceBaseName),
			schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(resource.StateInputs)),
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"State",
			"ResourceState",
		); stateClass != nil {
			stateClass.CanonicalName = canonicalTypeName(resourceBaseName, "State")
			spec.ObjectClasses = append(spec.ObjectClasses, *stateClass)
			resourceSpec.StateClass = stateClass.ClassName
		}

		methods := append([]*schema.Method{}, resource.Methods...)
		sort.Slice(methods, func(i, j int) bool {
			left := strings.TrimSpace(methods[i].Name)
			right := strings.TrimSpace(methods[j].Name)
			if left == right {
				leftToken := ""
				rightToken := ""
				if methods[i].Function != nil {
					leftToken = methods[i].Function.Token
				}
				if methods[j].Function != nil {
					rightToken = methods[j].Function.Token
				}
				return leftToken < rightToken
			}
			return left < right
		})
		methodSpecs := make([]packageResourceMethodSpec, 0, len(methods))
		for _, method := range methods {
			if method == nil {
				continue
			}

			methodSpec := packageResourceMethodSpec{
				Name: strings.TrimSpace(method.Name),
			}
			if method.Function != nil {
				methodSpec.Token = strings.TrimSpace(method.Function.Token)
				methodSpec.Comment = strings.TrimSpace(method.Function.Comment)
			}
			if methodSpec.Name == "" {
				methodSpec.Name = tokenElementName(methodSpec.Token)
			}
			if methodSpec.Name == "" {
				methodSpec.Name = "invoke"
			}

			methodBaseName := resourceBaseName + toDartClassName(methodSpec.Name)
			if method.Function != nil {
				inputProperties := schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(method.Function.Inputs))
				if classSpec := makeObjectClassSpec(
					methodBaseName,
					tokenModulePath(resource.Token),
					fmt.Sprintf("Arguments for %s.%s.", resourceBaseName, methodSpec.Name),
					inputProperties,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
					namedTypeRefs,
					true,
					true,
					pkg.Name,
					"Args",
					"MethodArgs",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(methodSpec.Name), "Args")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					methodSpec.ArgsClass = classSpec.ClassName
				}

				resultProperties := schemaObjectPropertiesFromRef(method.Function.Outputs)
				if len(resultProperties) == 0 {
					if objectReturn, ok := method.Function.ReturnType.(*schema.ObjectType); ok {
						resultProperties = schemaObjectPropertiesFromRef(objectReturn)
					}
				}
				if classSpec := makeObjectClassSpec(
					methodBaseName,
					tokenModulePath(resource.Token),
					fmt.Sprintf("Result data returned by %s.%s.", resourceBaseName, methodSpec.Name),
					resultProperties,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
					namedTypeRefs,
					true,
					false,
					pkg.Name,
					"Result",
					"MethodResult",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(methodSpec.Name), "Result")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					methodSpec.ResultClass = classSpec.ClassName
				}

				methodSpec.HasReturn = method.Function.Outputs != nil || method.Function.ReturnType != nil
			}

			methodSpecs = append(methodSpecs, methodSpec)
		}
		resourceSpec.Methods = methodSpecs
		resourceSpec.OutputProperties = makeResourceOutputPropertySpecs(resource, namedTypeRefs, pkg.Name)
		spec.Resources[resource.Token] = resourceSpec
	}

	functionByToken := map[string]*schema.Function{}
	functionTokens := make([]string, 0, len(pkg.Functions))
	for _, function := range pkg.Functions {
		functionByToken[function.Token] = function
		functionTokens = append(functionTokens, function.Token)
	}
	sort.Strings(functionTokens)

	for _, token := range functionTokens {
		function := functionByToken[token]
		inputProperties := []*schema.Property{}
		if function.Inputs != nil {
			inputProperties = function.Inputs.Properties
		}
		outputProperties := []*schema.Property{}
		if function.Outputs != nil {
			outputProperties = function.Outputs.Properties
		}

		functionSpec := packageFunctionSpec{
			Comment: strings.TrimSpace(function.Comment),
			HasArgs: len(inputProperties) > 0,
		}
		base := toDartClassName(tokenElementName(function.Token))
		if classSpec := makeObjectClassSpec(
			base,
			tokenModulePath(function.Token),
			fmt.Sprintf("Arguments for %s.", functionNameFromToken(function.Token, map[string]int{})),
			inputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(function.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"Args",
			"InvokeArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ArgsClass = classSpec.ClassName
		}
		if classSpec := makeObjectClassSpec(
			base,
			tokenModulePath(function.Token),
			fmt.Sprintf("Result data returned by %s.", functionNameFromToken(function.Token, map[string]int{})),
			outputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(function.Token)),
			namedTypeRefs,
			true,
			false,
			pkg.Name,
			"Result",
			"InvokeResult",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Result")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ResultClass = classSpec.ClassName
		}
		spec.Functions[function.Token] = functionSpec
	}

	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec
}
