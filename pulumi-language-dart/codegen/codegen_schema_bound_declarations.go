package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerBoundDeclarations(
	spec *packageSchema,
	pkg *schema.Package,
	namedTypeRefs map[string]packageNamedTypeRef,
	typeTokens []string,
	typesByToken map[string]schema.Type,
) {
	for _, token := range typeTokens {
		typ := typesByToken[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch t := typ.(type) {
		case *schema.EnumType:
			if enumSpec := makeSchemaEnumSpec(namedType.Name, tokenModulePath(token), t, pkg.Name); enumSpec != nil {
				enumSpec.CanonicalName = namedType.CanonicalName
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case *schema.ObjectType:
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				t.Comment,
				t.Properties,
				namedTypeRefs,
				true,
				true,
				pkg.Name,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}
}

func lowerBoundConfig(
	spec *packageSchema,
	pkg *schema.Package,
	usedClassNamesByModule map[string]map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
) {
	if len(pkg.Config) > 0 {
		configClassName := uniqueClassName(
			toDartClassName(pkg.Name)+"Config",
			moduleScopedTypeNameSet(usedClassNamesByModule, "config"),
		)
		if configClass := buildObjectClassSpec(
			configClassName,
			"config",
			fmt.Sprintf("Configuration values for the %s package.", pkg.Name),
			pkg.Config,
			namedTypeRefs,
			true,
			false,
			pkg.Name,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}
}
