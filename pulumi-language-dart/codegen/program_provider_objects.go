package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/zclconf/go-cty/cty"
)

func (lowerer programLowerer) providerObjectExpression(
	defaultPackage string, expression model.Expression, objectType *schema.ObjectType,
) (string, error) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		return lowerer.expression(expression)
	}
	pkg, module, className := providerObjectTypeName(defaultPackage, objectType.Token)
	fields := make([]string, len(object.Items))
	for index, item := range object.Items {
		name, err := staticProviderObjectKey(item.Key)
		if err != nil {
			return "", err
		}
		property, exists := objectType.Property(name)
		if !exists {
			return "", fmt.Errorf("unknown object property %q", name)
		}
		value, err := lowerer.typedProviderExpression(pkg, item.Value, property.Type)
		if err != nil {
			return "", fmt.Errorf("property %q: %w", name, err)
		}
		fields[index] = propertyFieldName(name, map[string]int{}) + ": (" + value + ").input()"
	}
	qualifier := pkg + "." + sanitizeCallableIdentifier(strings.ReplaceAll(module, "/", "_"))
	return qualifier + "." + className + "Args(" + strings.Join(fields, ", ") + ")", nil
}

func providerObjectTypeName(defaultPackage, token string) (string, string, string) {
	parts := strings.Split(token, ":")
	if len(parts) != 3 {
		return defaultPackage, "index", "GeneratedType"
	}
	pkg := parts[0]
	if pkg == "" {
		pkg = defaultPackage
	}
	return pkg, parts[1], sanitizeTypeName(toDartClassName(parts[2]))
}

func staticProviderObjectKey(expression model.Expression) (string, error) {
	switch expression := expression.(type) {
	case *model.LiteralValueExpression:
		if expression.Value.IsKnown() && expression.Value.Type() == cty.String {
			return expression.Value.AsString(), nil
		}
	case *model.TemplateExpression:
		if len(expression.Parts) == 1 {
			return staticProviderObjectKey(expression.Parts[0])
		}
	}
	return "", fmt.Errorf("provider object key must be a static string")
}
