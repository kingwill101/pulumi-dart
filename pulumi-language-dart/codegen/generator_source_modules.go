package codegen

import "sort"

func (p *sourcePlan) renderSupportFiles() {
	if config := generatedConfigFile(p.spec, p.packageName, "config/config.dart", p.typeFilesByName); config != nil {
		p.files["config/config.dart"] = config
		p.usedPaths["config/config.dart"] = 1
	}
	if registration := generatedPackageRegistrationFile(p.spec.Parameterization); registration != nil {
		p.files[p.registrationPath] = registration
		p.usedPaths[p.registrationPath] = 1
	}
}

func (p *sourcePlan) renderModuleLibraries() {
	sort.Strings(p.typeExports)
	sort.Strings(p.resourceExports)
	sort.Strings(p.functionExports)
	symbolFiles := make([]string, 0, len(p.typeExports)+len(p.resourceExports)+len(p.functionExports))
	symbolFiles = append(symbolFiles, p.typeExports...)
	symbolFiles = append(symbolFiles, p.resourceExports...)
	symbolFiles = append(symbolFiles, p.functionExports...)
	for path, content := range generatedModuleLibraryFiles(symbolFiles) {
		p.files[path] = content
	}
	for modulePath, aliasesByCanonical := range p.symbols.aliases {
		baseContent, ok := p.files[modulePath]
		if !ok {
			continue
		}
		aliases := make([]moduleAliasSpec, 0, len(aliasesByCanonical))
		for _, alias := range aliasesByCanonical {
			aliases = append(aliases, alias)
		}
		p.files[modulePath] = generatedAliasedModuleLibraryFile(modulePath, baseContent, aliases)
	}
}
