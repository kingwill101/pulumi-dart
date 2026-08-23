package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func packageSchemaFromPackage(pkg *schema.Package) *packageSchema {
	version := ""
	if pkg.Version != nil {
		version = pkg.Version.String()
	}

	spec := &packageSchema{
		Name:             pkg.Name,
		Namespace:        pkg.Namespace,
		Version:          version,
		Description:      strings.TrimSpace(pkg.Description),
		License:          strings.TrimSpace(pkg.License),
		Homepage:         strings.TrimSpace(pkg.Homepage),
		Repository:       strings.TrimSpace(pkg.Repository),
		Keywords:         append([]string(nil), pkg.Keywords...),
		Parameterization: nil,
		Resources:        map[string]packageResourceSpec{},
		Functions:        map[string]packageFunctionSpec{},
		Config:           nil,
		Enums:            []packageEnumSpec{},
		ObjectClasses:    []packageObjectClassSpec{},
	}

	if pkg.Parameterization != nil {
		pluginVersion := pkg.Parameterization.BaseProvider.Version.String()
		packageVersion := version
		if packageVersion == "" {
			packageVersion = pluginVersion
		}
		if pluginVersion == "" {
			pluginVersion = packageVersion
		}
		if pluginVersion == "" {
			pluginVersion = "0.0.1"
		}
		if packageVersion == "" {
			packageVersion = pluginVersion
		}

		spec.Parameterization = &packageParameterizationSpec{
			PluginName:     pkg.Parameterization.BaseProvider.Name,
			PluginVersion:  pluginVersion,
			PackageName:    pkg.Name,
			PackageVersion: packageVersion,
			DownloadURL:    pkg.PluginDownloadURL,
			Value:          append([]byte(nil), pkg.Parameterization.Parameter...),
		}
	}

	usedClassNamesByModule := map[string]map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}

	typeTokens := make([]string, 0, len(pkg.Types))
	typesByToken := map[string]schema.Type{}
	for _, typ := range pkg.Types {
		switch t := typ.(type) {
		case *schema.EnumType:
			if t.Token == "" {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		case *schema.ObjectType:
			if t.Token == "" || t.IsInputShape() {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		}
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typ := typesByToken[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		switch t := typ.(type) {
		case *schema.EnumType:
			typeName := uniqueQualifiedClassName(
				tokenElementName(token),
				tokenModulePath(token),
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				"",
				"Enum",
			)
			underlyingType := dartTypeSpecFromSchemaType(t.ElementType, nil, false, pkg.Name).DartType
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   underlyingType,
				UseReferenceType: true,
			}
		case *schema.ObjectType:
			typeName := ""
			useReferenceType := false
			if len(t.Properties) > 0 {
				typeName = uniqueQualifiedClassName(
					tokenElementName(token),
					tokenModulePath(token),
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					"",
					"Type",
				)
				useReferenceType = true
			}
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "object",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   "Map<String, dynamic>",
				UseReferenceType: useReferenceType,
			}
		}
	}

	lowerBoundDeclarations(spec, pkg, namedTypeRefs, typeTokens, typesByToken)
	// Section: schema-bound resource ref typing
	//
	// BindSpec can still surface resource refs in property types. Reserve their
	// generated class names here so token refs stay strongly typed.
	reservedResourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		if resource == nil || resource.Token == "" {
			continue
		}
		reservedResourceTokens = append(reservedResourceTokens, resource.Token)
	}
	sort.Strings(reservedResourceTokens)
	for _, token := range reservedResourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedClassNamesByModule, modulePath))
		namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "resource",
			Name:             className,
			CanonicalName:    canonicalTypeName(tokenElementName(token)),
			UnderlyingType:   "dynamic",
			UseReferenceType: true,
		}
	}
	lowerBoundConfig(spec, pkg, usedClassNamesByModule, namedTypeRefs)

	resourceByToken := map[string]*schema.Resource{}
	resourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		resourceByToken[resource.Token] = resource
		resourceTokens = append(resourceTokens, resource.Token)
	}
	if pkg.Provider != nil {
		providerToken := strings.TrimSpace(pkg.Provider.Token)
		if providerToken == "" {
			providerToken = fmt.Sprintf("pulumi:providers:%s", pkg.Name)
		}
		if _, exists := resourceByToken[providerToken]; !exists {
			resourceByToken[providerToken] = pkg.Provider
			resourceTokens = append(resourceTokens, providerToken)
		}
	}
	sort.Strings(resourceTokens)

	lowerBoundResources(spec, pkg, usedClassNamesByModule, namedTypeRefs, resourceTokens, resourceByToken)
	lowerBoundFunctions(spec, pkg, usedClassNamesByModule, namedTypeRefs)
	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec
}
