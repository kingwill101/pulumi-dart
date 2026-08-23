package codegen

import (
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/zclconf/go-cty/cty"
)

func providerObjectStringProperty(expression model.Expression, name string) (string, bool) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		return "", false
	}
	for _, item := range object.Items {
		key, err := staticProviderObjectKey(item.Key)
		if err != nil || key != name {
			continue
		}
		return providerStaticString(item.Value)
	}
	return "", false
}

func providerStaticString(expression model.Expression) (string, bool) {
	switch expression := expression.(type) {
	case *model.LiteralValueExpression:
		if expression.Value.IsKnown() && expression.Value.Type() == cty.String {
			return expression.Value.AsString(), true
		}
	case *model.TemplateExpression:
		if len(expression.Parts) == 1 {
			return providerStaticString(expression.Parts[0])
		}
	}
	return "", false
}
