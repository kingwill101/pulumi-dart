package codegen

import (
	"sort"
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

	tokens := make([]string, 0, len(pkg.Resources))
	for _, candidate := range pkg.Resources {
		if candidate != nil && candidate.Token != "" {
			tokens = append(tokens, candidate.Token)
		}
	}
	sort.Strings(tokens)
	usedByModule := map[string]map[string]int{}
	classes := map[string]string{}
	for _, token := range tokens {
		root := rootProgramModule(tokenModulePath(token))
		used := moduleScopedTypeNameSet(usedByModule, root)
		classes[token] = resourceClassNameFromToken(token, used)
	}
	argsClasses := map[string]string{}
	for _, token := range tokens {
		modulePath := tokenModulePath(token)
		baseName := resourceTypeBaseNameFromToken(token)
		used := moduleScopedTypeNameSet(usedByModule, modulePath)
		argsClasses[token] = uniqueQualifiedClassName(baseName, modulePath, used, "Args", "ResourceArgs")
	}
	return module, classes[resource.Token], argsClasses[resource.Token]
}

func rootProgramModule(module string) string {
	if root, _, nested := strings.Cut(module, "/"); nested {
		return root
	}
	return module
}
