package codegen

func lowerRawTypeDeclarationsAndConfig(
	spec *packageSchema,
	rawSpec rawPackageSchema,
	discovery rawSchemaDiscovery,
	externalRefs *externalRefResolver,
) {
	typeTokens := discovery.typeTokens
	namedTypeRefs := discovery.namedTypeRefs
	usedClassNamesByModule := discovery.usedClassNamesByModule
	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch namedType.Kind {
		case "enum":
			if enumSpec := makeRawEnumSpec(namedType.Name, tokenModulePath(token), typeSpec); enumSpec != nil {
				enumSpec.CanonicalName = namedType.CanonicalName
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case "object":
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildRawObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				typeSpec.Description,
				typeSpec.Properties,
				typeSpec.Required,
				namedTypeRefs,
				true,
				false,
				externalRefs,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	if len(rawSpec.Config.Variables) > 0 {
		configClassName := uniqueClassName(
			toDartClassName(rawSpec.Name)+"Config",
			moduleScopedTypeNameSet(usedClassNamesByModule, "config"),
		)
		if configClass := buildRawObjectClassSpec(
			configClassName,
			"config",
			rawSpec.Config.Description,
			rawSpec.Config.Variables,
			rawSpec.Config.Required,
			namedTypeRefs,
			true,
			false,
			externalRefs,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}
}
