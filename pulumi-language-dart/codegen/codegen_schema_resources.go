package codegen

import (
	"fmt"
	"strings"
)

func lowerRawResources(spec *packageSchema, raw rawPackageSchema, discovery rawSchemaDiscovery, external *externalRefResolver) {
	for _, token := range discovery.resourceTokens {
		lowerRawResource(spec, raw, discovery, external, token, discovery.resourceSpecs[token])
	}
}

func lowerRawResource(spec *packageSchema, raw rawPackageSchema, discovery rawSchemaDiscovery, external *externalRefResolver, token string, resource rawResourceSpec) {
	baseName := resourceTypeBaseNameFromToken(token)
	modulePath := tokenModulePath(token)
	result := packageResourceSpec{
		IsComponent: resource.IsComponent,
		IsProvider:  isProviderResourceToken(token) || resource.IsProvider,
		Comment:     strings.TrimSpace(resource.Description),
	}
	usedNames := moduleScopedTypeNameSet(discovery.usedClassNamesByModule, modulePath)
	if args := makeRawObjectClassSpec(baseName, modulePath, fmt.Sprintf("The set of arguments for %s.", baseName), resource.InputProperties, resource.RequiredInputs, usedNames, discovery.namedTypeRefs, true, true, external, "Args", "ResourceArgs"); args != nil {
		args.CanonicalName = canonicalTypeName(baseName, "Args")
		spec.ObjectClasses = append(spec.ObjectClasses, *args)
		result.ArgsClass = args.ClassName
	}
	if resource.StateInputs != nil {
		properties, required := rawObjectSpecPropertiesWithoutSelf(resource.StateInputs.Properties, resource.StateInputs.Required)
		if state := makeRawObjectClassSpec(baseName, modulePath, fmt.Sprintf("Input properties used for looking up and filtering %s resources.", baseName), properties, required, usedNames, discovery.namedTypeRefs, true, true, external, "State", "ResourceState"); state != nil {
			state.CanonicalName = canonicalTypeName(baseName, "State")
			spec.ObjectClasses = append(spec.ObjectClasses, *state)
			result.StateClass = state.ClassName
		}
	}
	result.Methods = lowerRawResourceMethods(spec, raw, discovery, external, resource, baseName, modulePath)
	result.OutputProperties = makeRawResourceOutputPropertySpecs(resource, discovery.namedTypeRefs, external)
	spec.Resources[token] = result
}
