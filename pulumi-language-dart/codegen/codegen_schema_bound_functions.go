package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerBoundFunctions(
	spec *packageSchema,
	pkg *schema.Package,
	usedClassNamesByModule map[string]map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
) {
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
			Comment:             strings.TrimSpace(function.Comment),
			HasArgs:             len(inputProperties) > 0,
			MultiArgumentInputs: function.MultiArgumentInputs,
		}
		if function.ReturnType != nil {
			functionSpec.ReturnType = dartTypeSpecFromSchemaType(
				function.ReturnType, namedTypeRefs, true, pkg.Name,
			)
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
			if functionSpec.MultiArgumentInputs {
				propertyNames := make([]string, len(inputProperties))
				for index, property := range inputProperties {
					propertyNames[index] = property.Name
				}
				functionSpec.Parameters = orderedFunctionParameters(
					classSpec.Properties,
					propertyNames,
				)
			}
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
}
