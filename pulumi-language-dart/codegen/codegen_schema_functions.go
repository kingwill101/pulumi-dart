package codegen

import (
	"fmt"
	"sort"
	"strings"
)

func lowerRawFunctions(
	spec *packageSchema,
	rawSpec rawPackageSchema,
	discovery rawSchemaDiscovery,
	externalRefs *externalRefResolver,
) {
	namedTypeRefs := discovery.namedTypeRefs
	usedClassNamesByModule := discovery.usedClassNamesByModule
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
			Comment:             strings.TrimSpace(function.Description),
			HasArgs:             len(inputProperties) > 0,
			MultiArgumentInputs: len(function.MultiArgumentInputs) > 0,
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
			if functionSpec.MultiArgumentInputs {
				functionSpec.Parameters = orderedFunctionParameters(
					classSpec.Properties,
					function.MultiArgumentInputs,
				)
			}
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
}

func orderedFunctionParameters(properties []packagePropertySpec, names []string) []packagePropertySpec {
	byName := make(map[string]packagePropertySpec, len(properties))
	for _, property := range properties {
		byName[property.Name] = property
	}
	ordered := make([]packagePropertySpec, 0, len(names))
	for _, name := range names {
		if property, ok := byName[name]; ok {
			ordered = append(ordered, property)
		}
	}
	return ordered
}
