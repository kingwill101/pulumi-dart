package codegen

import (
	"fmt"
	"sort"
	"strings"
)

func lowerRawResources(
	spec *packageSchema,
	rawSpec rawPackageSchema,
	discovery rawSchemaDiscovery,
	externalRefs *externalRefResolver,
) {
	resourceTokens := discovery.resourceTokens
	resourceSpecByToken := discovery.resourceSpecs
	namedTypeRefs := discovery.namedTypeRefs
	usedClassNamesByModule := discovery.usedClassNamesByModule
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
}
