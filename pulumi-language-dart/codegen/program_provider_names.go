package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func programProviderResourceName(resource *schema.Resource) (string, string, string) {
	className := sanitizeTypeName(toDartClassName(tokenElementName(resource.Token)))
	argsClass := sanitizeTypeName(toDartClassName(tokenElementName(resource.Token)) + "Args")
	module := rootProgramModule(tokenModulePath(resource.Token))
	pkg, err := resource.PackageReference.Definition()
	if err != nil || pkg == nil {
		return module, className, argsClass
	}

	usedByModule := map[string]map[string]int{}
	named, _, _ := reserveBoundNamedTypes(pkg, usedByModule)
	reserveBoundResourceTypes(pkg, usedByModule, named)
	if resolved, ok := named[resourceNamedTypeKey(resource.Token)]; ok {
		className = resolved.Name
	}
	if spec, ok := packageSchemaFromPackage(pkg).Resources[resource.Token]; ok {
		argsClass = spec.ArgsClass
	}
	return module, className, argsClass
}

func rootProgramModule(module string) string {
	module = normalizedModulePath(module)
	if root, _, nested := strings.Cut(module, "/"); nested {
		return root
	}
	return module
}
