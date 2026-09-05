package codegen

import "sort"

func (p *sourcePlan) renderFunctions() {
	tokens := make([]string, 0, len(p.spec.Functions))
	for token := range p.spec.Functions {
		tokens = append(tokens, token)
	}
	sort.Strings(tokens)
	usedNamesByModule := map[string]map[string]int{}
	exportSet := map[string]struct{}{}
	functionsByPath := map[string][]generatedFunctionSpec{}
	pathByModule := map[string]string{}
	for _, token := range tokens {
		modulePath := tokenModulePath(token)
		name := functionNameFromToken(token, moduleScopedIdentifierSet(usedNamesByModule, modulePath))
		moduleScope := moduleScopeKey(modulePath)
		path, ok := pathByModule[moduleScope]
		if !ok {
			path = uniqueGeneratedFilePath(moduleClassFilePath(modulePath, "functions"), p.usedPaths)
			pathByModule[moduleScope] = path
		}
		if _, exists := exportSet[path]; !exists {
			p.functionExports = append(p.functionExports, path)
			exportSet[path] = struct{}{}
		}
		function := p.spec.Functions[token]
		functionsByPath[path] = append(functionsByPath[path], generatedFunctionSpec{Token: token, ModulePath: modulePath, Function: function, FuncName: name})
		p.recordFunctionSymbols(token, modulePath, path, name, function)
	}
	for _, path := range p.functionExports {
		p.files[path] = generatedFunctionsFile(functionsByPath[path], path, p.spec.Parameterization != nil, p.typeFilesByName, p.registrationPath)
	}
}

func (p *sourcePlan) recordFunctionSymbols(token, modulePath, path, name string, function packageFunctionSpec) {
	moduleFile := moduleLibraryFilePath(modulePath)
	p.symbols.addAlias("function", moduleFile, canonicalFunctionNameFromToken(token), name, path)
	p.symbols.addAlias("function", moduleFile, canonicalFunctionNameFromToken(token)+"Output", name+"Output", path)
	baseName := toDartClassName(tokenElementName(token))
	for _, result := range []struct{ canonical, generated string }{
		{canonicalTypeName(baseName, "Args"), function.ArgsClass},
		{canonicalTypeName(baseName, "Result"), function.ResultClass},
	} {
		if result.generated == "" {
			continue
		}
		if typePath, ok := resolveTypeFilePath(p.typeFilesByName, result.generated, modulePath); ok {
			p.symbols.addAlias("type", moduleFile, result.canonical, result.generated, typePath)
		}
	}
}
