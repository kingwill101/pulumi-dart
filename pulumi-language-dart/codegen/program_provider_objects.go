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
	pkg, module, className := providerObjectTypeName(defaultPackage, objectType)
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
	qualifier := programModuleAlias(pkg, module)
	return qualifier + "." + className + "(" + strings.Join(fields, ", ") + ")", nil
}

func providerObjectTypeName(defaultPackage string, objectType *schema.ObjectType) (string, string, string) {
	token := objectType.Token
	if objectType.IsInputShape() && objectType.PlainShape.Token != "" {
		token = objectType.PlainShape.Token
	}
	parts := strings.Split(token, ":")
	if len(parts) != 3 {
		return defaultPackage, "index", "GeneratedType"
	}
	pkg := parts[0]
	if pkg == "" {
		pkg = defaultPackage
	}
	module := rootProgramModule(tokenModulePath(objectType.Token))
	className := sanitizeTypeName(toDartClassName(parts[2]))
	if objectType.PackageReference != nil {
		pkg = dartPackageNameForReference(pkg, objectType.PackageReference)
		definition, err := objectType.PackageReference.Definition()
		if err != nil || definition == nil {
			return pkg, module, className
		}
		named, _, _ := reserveBoundNamedTypes(definition, map[string]map[string]int{})
		if resolved, ok := named[objectType.Token]; ok {
			className = resolved.Name
		}
	}
	if !strings.HasPrefix(pkg, "pulumi_") && pkg != "pulumi" {
		pkg = toDartPackageName("", pkg)
	}
	return pkg, module, className
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
