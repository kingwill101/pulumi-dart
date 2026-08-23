package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerEnumExpression(
	defaultPackage string, expression model.Expression, enum *schema.EnumType,
) (string, error) {
	value, err := lowerer.expression(expression)
	if err != nil {
		return "", err
	}
	pkg, module, className := providerEnumName(defaultPackage, enum)
	lowerer.imports[pkg+"\x00"+module] = dartProgramImport{Package: pkg, Module: module}
	typeName := programModuleAlias(pkg, module) + "." + className
	if sameProviderEnumType(expression.Type(), enum) {
		return value, nil
	}
	if model.ContainsOutputs(expression.Type()) {
		return fmt.Sprintf(
			"pulumi.output(%s).apply<%s>((value) => %s.fromValue(value))",
			value, typeName, typeName,
		), nil
	}
	return fmt.Sprintf("%s.fromValue(%s)", typeName, value), nil
}

func sameProviderEnumType(typ model.Type, target *schema.EnumType) bool {
	source, ok := pcl.GetSchemaForType(model.ResolveOutputs(typ))
	if !ok {
		return false
	}
	source = unwrapProviderInputType(source)
	enum, ok := source.(*schema.EnumType)
	return ok && enum.Token == target.Token
}

func providerEnumName(defaultPackage string, enum *schema.EnumType) (string, string, string) {
	parts := strings.Split(enum.Token, ":")
	if len(parts) != 3 {
		return defaultPackage, "index", sanitizeTypeName(toDartClassName(enum.Token))
	}
	pkg := parts[0]
	if pkg == "" {
		pkg = defaultPackage
	}
	module := rootProgramModule(tokenModulePath(enum.Token))
	className := sanitizeTypeName(toDartClassName(parts[2]))
	if enum.PackageReference != nil {
		definition, err := enum.PackageReference.Definition()
		if err != nil || definition == nil {
			return pkg, module, className
		}
		named, _, _ := reserveBoundNamedTypes(definition, map[string]map[string]int{})
		if resolved, ok := named[enum.Token]; ok {
			className = resolved.Name
		}
	}
	return pkg, module, className
}
