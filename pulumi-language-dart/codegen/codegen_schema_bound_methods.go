package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerBoundResourceMethods(spec *packageSchema, pkg *schema.Package, used map[string]map[string]int, named map[string]packageNamedTypeRef, resource *schema.Resource, baseName, modulePath string) []packageResourceMethodSpec {
	methods := append([]*schema.Method(nil), resource.Methods...)
	sort.Slice(methods, func(i, j int) bool { return boundMethodSortKey(methods[i]) < boundMethodSortKey(methods[j]) })
	result := make([]packageResourceMethodSpec, 0, len(methods))
	for _, method := range methods {
		if method == nil {
			continue
		}
		result = append(result, lowerBoundResourceMethod(spec, pkg, used, named, method, baseName, modulePath))
	}
	return result
}

func boundMethodSortKey(method *schema.Method) string {
	if method == nil {
		return ""
	}
	name := strings.TrimSpace(method.Name)
	if method.Function == nil {
		return name
	}
	return name + "\x00" + method.Function.Token
}

func lowerBoundResourceMethod(spec *packageSchema, pkg *schema.Package, used map[string]map[string]int, named map[string]packageNamedTypeRef, method *schema.Method, baseName, modulePath string) packageResourceMethodSpec {
	result := packageResourceMethodSpec{Name: strings.TrimSpace(method.Name)}
	if method.Function == nil {
		if result.Name == "" {
			result.Name = "invoke"
		}
		return result
	}
	result.Token = strings.TrimSpace(method.Function.Token)
	result.Comment = strings.TrimSpace(method.Function.Comment)
	if result.Name == "" {
		result.Name = tokenElementName(result.Token)
	}
	if result.Name == "" {
		result.Name = "invoke"
	}
	methodBase := baseName + toDartClassName(result.Name)
	inputs := schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(method.Function.Inputs))
	if args := makeObjectClassSpec(methodBase, modulePath, fmt.Sprintf("Arguments for %s.%s.", baseName, result.Name), inputs, moduleScopedTypeNameSet(used, modulePath), named, true, true, pkg.Name, "Args", "MethodArgs"); args != nil {
		args.CanonicalName = canonicalTypeName(baseName, toDartClassName(result.Name), "Args")
		spec.ObjectClasses = append(spec.ObjectClasses, *args)
		result.ArgsClass = args.ClassName
	}
	outputs := schemaObjectPropertiesFromRef(method.Function.Outputs)
	if len(outputs) == 0 {
		if objectReturn, ok := method.Function.ReturnType.(*schema.ObjectType); ok {
			outputs = schemaObjectPropertiesFromRef(objectReturn)
		}
	}
	if value := makeObjectClassSpec(methodBase, modulePath, fmt.Sprintf("Result data returned by %s.%s.", baseName, result.Name), outputs, moduleScopedTypeNameSet(used, modulePath), named, true, false, pkg.Name, "Result", "MethodResult"); value != nil {
		value.CanonicalName = canonicalTypeName(baseName, toDartClassName(result.Name), "Result")
		spec.ObjectClasses = append(spec.ObjectClasses, *value)
		result.ResultClass = value.ClassName
	}
	result.HasReturn = method.Function.Outputs != nil || method.Function.ReturnType != nil
	return result
}
