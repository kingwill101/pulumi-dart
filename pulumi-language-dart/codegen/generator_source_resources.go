package codegen

import "sort"

func (p *sourcePlan) reserveResourcePaths() {
	for token := range p.spec.Resources {
		p.resourceTokens = append(p.resourceTokens, token)
	}
	sort.Strings(p.resourceTokens)
	usedNamesByModule := map[string]map[string]int{}
	for _, objectClass := range p.spec.ObjectClasses {
		if objectClass.ClassName != "" {
			moduleScopedTypeNameSet(usedNamesByModule, objectClass.ModulePath)[objectClass.ClassName] = 1
		}
	}
	if p.spec.Config != nil && p.spec.Config.ClassName != "" {
		moduleScopedTypeNameSet(usedNamesByModule, "config")[p.spec.Config.ClassName] = 1
	}
	for _, token := range p.resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedNamesByModule, modulePath))
		path := uniqueGeneratedFilePath(moduleClassFilePath(modulePath, className), p.usedPaths)
		p.resourceNames[token], p.resourcePaths[token] = className, path
		addGeneratedTypeFile(p.typeFilesByName, className, modulePath, path)
	}
}

func (p *sourcePlan) renderResources() {
	for _, token := range p.resourceTokens {
		modulePath, className, path := tokenModulePath(token), p.resourceNames[token], p.resourcePaths[token]
		resource := p.spec.Resources[token]
		p.resourceExports = append(p.resourceExports, path)
		p.files[path] = generatedResourceFile(
			token, resource, className, path, p.spec.Parameterization != nil,
			p.typeFilesByName, p.registrationPath, p.spec.Version, p.spec.PluginDownloadURL,
		)
		moduleFile := moduleLibraryFilePath(modulePath)
		p.symbols.addAlias("type", moduleFile, canonicalTypeName(tokenElementName(token)), className, path)
		if resource.ArgsClass != "" {
			if argsPath, ok := resolveTypeFilePath(p.typeFilesByName, resource.ArgsClass, modulePath); ok {
				p.symbols.addAlias("type", moduleFile, canonicalTypeName(tokenElementName(token), "Args"), resource.ArgsClass, argsPath)
			}
		}
	}
}
