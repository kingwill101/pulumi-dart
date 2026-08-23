package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func resolveBoundPackageDocs(pkg *schema.Package, spec *packageSchema) {
	resolve := func(comment string) string {
		if !strings.Contains(comment, "{{% ref") {
			return comment
		}
		// Accept the compact spelling emitted by a few older schemas.
		comment = strings.ReplaceAll(comment, "{{% ref#", "{{% ref #")
		resolved, err := pkg.Reference().InterpretPulumiRefs(comment, dartDocRefName)
		if err != nil {
			return comment
		}
		return resolved
	}
	spec.Description = resolve(spec.Description)
	for token, resource := range spec.Resources {
		resource.Comment = resolve(resource.Comment)
		resolveProperties(resource.OutputProperties, resolve)
		for i := range resource.Methods {
			resource.Methods[i].Comment = resolve(resource.Methods[i].Comment)
		}
		spec.Resources[token] = resource
	}
	for token, function := range spec.Functions {
		function.Comment = resolve(function.Comment)
		resolveProperties(function.Parameters, resolve)
		spec.Functions[token] = function
	}
	if spec.Config != nil {
		spec.Config.Comment = resolve(spec.Config.Comment)
		resolveProperties(spec.Config.Properties, resolve)
	}
	for i := range spec.ObjectClasses {
		spec.ObjectClasses[i].Comment = resolve(spec.ObjectClasses[i].Comment)
		resolveProperties(spec.ObjectClasses[i].Properties, resolve)
	}
	for i := range spec.Enums {
		spec.Enums[i].Comment = resolve(spec.Enums[i].Comment)
		for j := range spec.Enums[i].Values {
			spec.Enums[i].Values[j].Comment = resolve(spec.Enums[i].Values[j].Comment)
		}
	}
}

func resolveProperties(properties []packagePropertySpec, resolve func(string) string) {
	for i := range properties {
		properties[i].Comment = resolve(properties[i].Comment)
	}
}

func dartDocRefName(ref schema.DocRef) (string, bool) {
	if ref.Property != "" {
		return propertyFieldName(ref.Property, map[string]int{}), true
	}
	if ref.Function != nil {
		return functionNameFromToken(ref.Function.Token, map[string]int{}), true
	}
	if ref.Type != nil {
		return canonicalTypeName(tokenElementName(ref.Type.String())), true
	}
	return "", false
}
