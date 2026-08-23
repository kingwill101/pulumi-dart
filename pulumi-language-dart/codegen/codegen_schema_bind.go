package codegen

import (
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func packageSchemaFromPackage(pkg *schema.Package) *packageSchema {
	spec := newBoundPackageSchema(pkg)
	usedNames := map[string]map[string]int{}
	namedTypes, typeTokens, typesByToken := reserveBoundNamedTypes(pkg, usedNames)
	lowerBoundDeclarations(spec, pkg, namedTypes, typeTokens, typesByToken)
	reserveBoundResourceTypes(pkg, usedNames, namedTypes)
	lowerBoundConfig(spec, pkg, usedNames, namedTypes)
	resourceTokens, resourcesByToken := collectBoundResources(pkg)
	lowerBoundResources(spec, pkg, usedNames, namedTypes, resourceTokens, resourcesByToken)
	lowerBoundFunctions(spec, pkg, usedNames, namedTypes)
	sort.Slice(spec.Enums, func(i, j int) bool { return spec.Enums[i].EnumName < spec.Enums[j].EnumName })
	sort.Slice(spec.ObjectClasses, func(i, j int) bool { return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName })
	return spec
}
