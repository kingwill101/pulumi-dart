package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
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
	if model.ContainsOutputs(expression.Type()) {
		return fmt.Sprintf(
			"pulumi.output(%s).apply<%s>((value) => %s.fromValue(value))",
			value, typeName, typeName,
		), nil
	}
	return fmt.Sprintf("%s.fromValue(%s)", typeName, value), nil
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
	if definition, err := enum.PackageReference.Definition(); err == nil && definition != nil {
		named, _, _ := reserveBoundNamedTypes(definition, map[string]map[string]int{})
		if resolved, ok := named[enum.Token]; ok {
			className = resolved.Name
		}
	}
	return pkg, module, className
}
