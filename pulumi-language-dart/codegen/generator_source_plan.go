package codegen

import "sort"

type sourcePlan struct {
	spec             *packageSchema
	packageName      string
	sdkLibraryName   string
	files            map[string][]byte
	typeFilesByName  map[string][]generatedTypeFile
	usedPaths        map[string]int
	registrationPath string
	typeExports      []string
	resourceExports  []string
	functionExports  []string
	resourceTokens   []string
	resourceNames    map[string]string
	resourcePaths    map[string]string
	symbols          *moduleSymbolPlanner
}

func newSourcePlan(spec *packageSchema, packageName, sdkLibraryName string) *sourcePlan {
	return &sourcePlan{
		spec: spec, packageName: packageName, sdkLibraryName: sdkLibraryName,
		files: map[string][]byte{}, typeFilesByName: map[string][]generatedTypeFile{},
		usedPaths: map[string]int{"sdk.dart": 1}, registrationPath: "internal/package_registration.dart",
		resourceNames: map[string]string{}, resourcePaths: map[string]string{}, symbols: newModuleSymbolPlanner(),
	}
}

func (p *sourcePlan) result() (map[string][]byte, map[string][]moduleAliasSpec) {
	ordered := map[string][]moduleAliasSpec{}
	for modulePath, symbolsByCanonical := range p.symbols.symbols {
		if len(symbolsByCanonical) == 0 {
			continue
		}
		symbols := make([]moduleAliasSpec, 0, len(symbolsByCanonical))
		for _, symbol := range symbolsByCanonical {
			symbols = append(symbols, symbol)
		}
		sort.Slice(symbols, func(i, j int) bool { return symbols[i].CanonicalName < symbols[j].CanonicalName })
		ordered[modulePath] = symbols
	}
	return p.files, ordered
}
