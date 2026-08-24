package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerUnionExpression(
	pkg string, expression model.Expression, union *schema.UnionType,
) (string, error) {
	if selected := selectProviderUnionType(expression, union); selected != nil {
		value, err := lowerer.typedProviderExpression(pkg, expression, selected)
		if err != nil {
			return "", err
		}
		if _, ok := unwrapProviderInputType(selected).(*schema.ObjectType); ok {
			return "(" + value + ").toMap()", nil
		}
		return value, nil
	}
	return lowerer.expression(expression)
}

func selectProviderUnionType(expression model.Expression, union *schema.UnionType) schema.Type {
	if union.Discriminator != "" {
		if value, ok := providerObjectStringProperty(expression, union.Discriminator); ok {
			if token := union.Mapping[value]; token != "" {
				for _, candidate := range union.ElementTypes {
					if providerUnionTypeToken(candidate) == normalizeProviderUnionToken(token) {
						return candidate
					}
				}
			}
		}
	}
	for _, candidate := range union.ElementTypes {
		if providerSchemaAcceptsExpression(candidate, expression) {
			return candidate
		}
	}
	return union.DefaultType
}

func providerUnionTypeToken(typ schema.Type) string {
	typ = unwrapProviderInputType(typ)
	if object, ok := typ.(*schema.ObjectType); ok {
		return object.Token
	}
	return ""
}

func normalizeProviderUnionToken(token string) string {
	return strings.TrimPrefix(token, "#/types/")
}
