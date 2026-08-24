package codegen

import (
	"fmt"
	"sort"
	"strings"
)

func lowerRawResourceMethods(spec *packageSchema, raw rawPackageSchema, discovery rawSchemaDiscovery, external *externalRefResolver, resource rawResourceSpec, baseName, modulePath string) []packageResourceMethodSpec {
	names := make([]string, 0, len(resource.Methods))
	for name := range resource.Methods {
		names = append(names, name)
	}
	sort.Strings(names)
	methods := make([]packageResourceMethodSpec, 0, len(names))
	for _, name := range names {
		methods = append(methods, lowerRawResourceMethod(spec, raw, discovery, external, baseName, modulePath, name, resource.Methods[name]))
	}
	return methods
}

func lowerRawResourceMethod(spec *packageSchema, raw rawPackageSchema, discovery rawSchemaDiscovery, external *externalRefResolver, baseName, modulePath, name, token string) packageResourceMethodSpec {
	result := packageResourceMethodSpec{Name: name, Token: strings.TrimSpace(token)}
	function, found := raw.Functions[result.Token]
	if found {
		result.Comment = strings.TrimSpace(function.Description)
	}
	if result.Name == "" {
		result.Name = tokenElementName(result.Token)
	}
	if result.Name == "" {
		result.Name = "invoke"
	}
	methodBase := baseName + toDartClassName(result.Name)
	usedNames := moduleScopedTypeNameSet(discovery.usedClassNamesByModule, modulePath)
	if found && function.Inputs != nil {
		properties, required := rawObjectSpecPropertiesWithoutSelf(function.Inputs.Properties, function.Inputs.Required)
		if args := makeRawObjectClassSpec(methodBase, modulePath, fmt.Sprintf("Arguments for %s.%s.", baseName, result.Name), properties, required, usedNames, discovery.namedTypeRefs, true, true, external, "Args", "MethodArgs"); args != nil {
			args.CanonicalName = canonicalTypeName(baseName, toDartClassName(result.Name), "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *args)
			result.ArgsClass = args.ClassName
		}
	}
	if found && function.Outputs != nil {
		if value := makeRawObjectClassSpec(methodBase, modulePath, fmt.Sprintf("Result data returned by %s.%s.", baseName, result.Name), function.Outputs.Properties, function.Outputs.Required, usedNames, discovery.namedTypeRefs, true, false, external, "Result", "MethodResult"); value != nil {
			value.CanonicalName = canonicalTypeName(baseName, toDartClassName(result.Name), "Result")
			spec.ObjectClasses = append(spec.ObjectClasses, *value)
			result.ResultClass = value.ClassName
		}
		result.HasReturn = true
	}
	if found && function.ReturnType != nil {
		result.ReturnType = dartTypeSpecFromRawPropertyType(
			*function.ReturnType, discovery.namedTypeRefs, true, external,
		)
		result.ReturnPlain = function.ReturnType.Plain
		result.HasReturn = true
	}
	return result
}
