package codegen

type rawSchemaDiscovery struct {
	typeTokens             []string
	resourceTokens         []string
	resourceSpecs          map[string]rawResourceSpec
	namedTypeRefs          map[string]packageNamedTypeRef
	usedClassNamesByModule map[string]map[string]int
}

func discoverRawSchema(rawSpec rawPackageSchema) rawSchemaDiscovery {
	discovery := rawSchemaDiscovery{
		resourceSpecs:          normalizedRawResources(rawSpec),
		namedTypeRefs:          map[string]packageNamedTypeRef{},
		usedClassNamesByModule: map[string]map[string]int{},
	}
	discovery.typeTokens = sortedMapKeys(rawSpec.Types)
	discovery.resourceTokens = sortedMapKeys(discovery.resourceSpecs)
	discovery.reserveNamedTypes(rawSpec.Types)
	discovery.reserveResources()
	return discovery
}

func (d *rawSchemaDiscovery) reserveNamedTypes(types map[string]rawTypeSpec) {
	for _, token := range d.typeTokens {
		typeSpec := types[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		if len(typeSpec.Enum) > 0 {
			d.namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             d.uniqueTypeName(token, "Enum"),
				CanonicalName:    canonicalName,
				UnderlyingType:   dartTypeFromRawTypeName(typeSpec.Type),
				UseReferenceType: true,
			}
			continue
		}
		if typeSpec.Type != "object" {
			continue
		}

		name := ""
		useReferenceType := len(typeSpec.Properties) > 0
		if useReferenceType {
			name = d.uniqueTypeName(token, "Type")
		}
		d.namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "object",
			Name:             name,
			CanonicalName:    canonicalName,
			UnderlyingType:   "Map<String, dynamic>",
			UseReferenceType: useReferenceType,
		}
	}
}

func (d *rawSchemaDiscovery) uniqueTypeName(token, fallbackSuffix string) string {
	modulePath := tokenModulePath(token)
	return uniqueQualifiedClassName(
		tokenElementName(token),
		modulePath,
		moduleScopedTypeNameSet(d.usedClassNamesByModule, modulePath),
		"",
		fallbackSuffix,
	)
}

func (d *rawSchemaDiscovery) reserveResources() {
	for _, token := range d.resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(
			token,
			moduleScopedTypeNameSet(d.usedClassNamesByModule, modulePath),
		)
		d.namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "resource",
			Name:             className,
			CanonicalName:    canonicalTypeName(tokenElementName(token)),
			UnderlyingType:   "dynamic",
			UseReferenceType: true,
		}
	}
}
