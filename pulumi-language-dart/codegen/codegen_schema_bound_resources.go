package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerBoundResources(spec *packageSchema, pkg *schema.Package, used map[string]map[string]int, named map[string]packageNamedTypeRef, tokens []string, byToken map[string]*schema.Resource) {
	for _, token := range tokens {
		lowerBoundResource(spec, pkg, used, named, byToken[token])
	}
}

func lowerBoundResource(spec *packageSchema, pkg *schema.Package, used map[string]map[string]int, named map[string]packageNamedTypeRef, resource *schema.Resource) {
	baseName := resourceTypeBaseNameFromToken(resource.Token)
	modulePath := tokenModulePath(resource.Token)
	result := packageResourceSpec{
		IsComponent: resource.IsComponent,
		IsProvider:  isProviderResourceToken(resource.Token) || resource.IsProvider,
		Comment:     strings.TrimSpace(resource.Comment),
	}
	if args := makeObjectClassSpec(baseName, modulePath, fmt.Sprintf("The set of arguments for %s.", baseName), resource.InputProperties, moduleScopedTypeNameSet(used, modulePath), named, true, true, pkg.Name, "Args", "ResourceArgs"); args != nil {
		args.CanonicalName = canonicalTypeName(baseName, "Args")
		spec.ObjectClasses = append(spec.ObjectClasses, *args)
		result.ArgsClass = args.ClassName
		result.HasDefaultArgs = objectClassHasDefaults(*args)
	}
	if state := makeObjectClassSpec(baseName, modulePath, fmt.Sprintf("Input properties used for looking up and filtering %s resources.", baseName), schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(resource.StateInputs)), moduleScopedTypeNameSet(used, modulePath), named, true, true, pkg.Name, "State", "ResourceState"); state != nil {
		state.CanonicalName = canonicalTypeName(baseName, "State")
		spec.ObjectClasses = append(spec.ObjectClasses, *state)
		result.StateClass = state.ClassName
	}
	result.Methods = lowerBoundResourceMethods(spec, pkg, used, named, resource, baseName, modulePath)
	replaceOnChanges, _ := resource.ReplaceOnChanges()
	result.ReplaceOnChanges = schema.PropertyListJoinToString(replaceOnChanges, func(name string) string { return name })
	result.OutputProperties = makeResourceOutputPropertySpecs(resource, named, pkg.Name)
	spec.Resources[resource.Token] = result
}
