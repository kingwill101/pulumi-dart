package codegen

type moduleSymbolPlanner struct {
	aliases  map[string]map[string]moduleAliasSpec
	symbols  map[string]map[string]moduleAliasSpec
	occupied map[string]map[string]struct{}
}

func newModuleSymbolPlanner() *moduleSymbolPlanner {
	return &moduleSymbolPlanner{
		aliases:  map[string]map[string]moduleAliasSpec{},
		symbols:  map[string]map[string]moduleAliasSpec{},
		occupied: map[string]map[string]struct{}{},
	}
}

func (p *moduleSymbolPlanner) mark(moduleFilePath, name string) {
	if moduleFilePath == "" || name == "" {
		return
	}
	if p.occupied[moduleFilePath] == nil {
		p.occupied[moduleFilePath] = map[string]struct{}{}
	}
	p.occupied[moduleFilePath][name] = struct{}{}
}

func (p *moduleSymbolPlanner) record(kind, moduleFilePath, canonicalName, generatedName string) {
	if moduleFilePath == "" || canonicalName == "" || generatedName == "" {
		return
	}
	if p.symbols[moduleFilePath] == nil {
		p.symbols[moduleFilePath] = map[string]moduleAliasSpec{}
	}
	if _, exists := p.symbols[moduleFilePath][canonicalName]; exists {
		return
	}
	p.symbols[moduleFilePath][canonicalName] = moduleAliasSpec{
		Kind: kind, CanonicalName: canonicalName, GeneratedName: generatedName,
	}
}

func (p *moduleSymbolPlanner) addAlias(kind, moduleFilePath, canonicalName, generatedName, sourceFilePath string) {
	if resolved := moduleLibraryPathForSymbolFile(sourceFilePath); resolved != "" {
		moduleFilePath = resolved
	}
	p.record(kind, moduleFilePath, canonicalName, generatedName)
	if moduleFilePath == "" || canonicalName == "" || generatedName == "" ||
		sourceFilePath == "" || canonicalName == generatedName {
		p.mark(moduleFilePath, generatedName)
		return
	}
	p.mark(moduleFilePath, generatedName)
	if _, exists := p.occupied[moduleFilePath][canonicalName]; exists {
		return
	}
	if p.aliases[moduleFilePath] == nil {
		p.aliases[moduleFilePath] = map[string]moduleAliasSpec{}
	}
	if _, exists := p.aliases[moduleFilePath][canonicalName]; exists {
		return
	}
	p.aliases[moduleFilePath][canonicalName] = moduleAliasSpec{
		Kind: kind, CanonicalName: canonicalName, GeneratedName: generatedName,
		ImportPath: relativeImportPath(moduleFilePath, sourceFilePath),
	}
	p.mark(moduleFilePath, canonicalName)
}
