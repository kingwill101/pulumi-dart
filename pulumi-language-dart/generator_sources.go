package main

import (
	"fmt"
	"path/filepath"
	"sort"
	"strings"
)

type moduleAliasSpec struct {
	Kind          string
	CanonicalName string
	GeneratedName string
	ImportPath    string
}

type generatedTypeFile struct {
	ClassName  string
	ModulePath string
	FilePath   string
}

func addGeneratedTypeFile(typeFilesByName map[string][]generatedTypeFile, className, modulePath, filePath string) {
	if className == "" || filePath == "" {
		return
	}
	typeFilesByName[className] = append(typeFilesByName[className], generatedTypeFile{
		ClassName:  className,
		ModulePath: modulePath,
		FilePath:   filePath,
	})
}

func resolveTypeFilePath(
	typeFilesByName map[string][]generatedTypeFile,
	className, modulePath string,
) (string, bool) {
	entries := typeFilesByName[className]
	if len(entries) == 0 {
		return "", false
	}
	if len(entries) == 1 {
		return entries[0].FilePath, true
	}

	scopeKey := moduleScopeKey(modulePath)
	for _, entry := range entries {
		if moduleScopeKey(entry.ModulePath) == scopeKey {
			return entry.FilePath, true
		}
	}

	// Stable fallback when no module-scope match exists.
	sorted := make([]generatedTypeFile, len(entries))
	copy(sorted, entries)
	sort.Slice(sorted, func(i, j int) bool {
		return sorted[i].FilePath < sorted[j].FilePath
	})
	return sorted[0].FilePath, true
}

func moduleLibraryPathForSymbolFile(symbolFilePath string) string {
	normalized := filepath.ToSlash(strings.TrimSpace(symbolFilePath))
	if normalized == "" {
		return ""
	}

	dir := filepath.ToSlash(filepath.Dir(normalized))
	if dir == "." || dir == "" {
		return "index.dart"
	}

	root := dir
	if idx := strings.Index(root, "/"); idx >= 0 {
		root = root[:idx]
	}
	if root == "" {
		return "index.dart"
	}
	return root + ".dart"
}

func moduleExportPathsFromContent(content []byte) []string {
	lines := strings.Split(string(content), "\n")
	exports := make([]string, 0, len(lines))
	for _, rawLine := range lines {
		line := strings.TrimSpace(rawLine)
		if !strings.HasPrefix(line, "export '") || !strings.HasSuffix(line, "';") {
			continue
		}
		exportPath := strings.TrimSuffix(strings.TrimPrefix(line, "export '"), "';")
		if exportPath == "" {
			continue
		}
		exports = append(exports, exportPath)
	}
	return exports
}

func generatedAliasedModuleLibraryFile(moduleFilePath string, baseContent []byte, aliases []moduleAliasSpec) []byte {
	exportPaths := moduleExportPathsFromContent(baseContent)
	imports := map[string]struct{}{}
	aliasByCanonical := map[string]moduleAliasSpec{}
	for _, alias := range aliases {
		if alias.CanonicalName == "" ||
			alias.GeneratedName == "" ||
			alias.ImportPath == "" ||
			alias.CanonicalName == alias.GeneratedName {
			continue
		}
		// We no longer emit type typedef aliases in module libraries.
		// Canonical type naming is now handled directly by module-scoped generation.
		if alias.Kind != "function" {
			continue
		}
		if _, exists := aliasByCanonical[alias.CanonicalName]; exists {
			continue
		}
		aliasByCanonical[alias.CanonicalName] = alias
		imports[alias.ImportPath] = struct{}{}
	}

	orderedImports := make([]string, 0, len(imports))
	for importPath := range imports {
		orderedImports = append(orderedImports, importPath)
	}
	sort.Strings(orderedImports)

	orderedAliases := make([]moduleAliasSpec, 0, len(aliasByCanonical))
	for _, alias := range aliasByCanonical {
		orderedAliases = append(orderedAliases, alias)
	}
	sort.Slice(orderedAliases, func(i, j int) bool {
		return orderedAliases[i].CanonicalName < orderedAliases[j].CanonicalName
	})

	moduleStem := strings.TrimSuffix(filepath.ToSlash(moduleFilePath), ".dart")
	var b strings.Builder
	fmt.Fprintf(&b, "library %s;\n\n", sanitizeDartIdentifier("module_"+strings.ReplaceAll(moduleStem, "/", "_")))
	for _, importPath := range orderedImports {
		fmt.Fprintf(&b, "import '%s';\n", importPath)
	}
	if len(orderedImports) > 0 {
		b.WriteString("\n")
	}

	for _, exportPath := range exportPaths {
		fmt.Fprintf(&b, "export '%s';\n", exportPath)
	}
	if len(exportPaths) == 0 {
		b.WriteString("// No symbols generated for this module directory.\n")
	}

	if len(orderedAliases) > 0 {
		b.WriteString("\n")
		for _, alias := range orderedAliases {
			fmt.Fprintf(&b, "final %s = %s;\n", alias.CanonicalName, alias.GeneratedName)
		}
	}
	return []byte(b.String())
}

func generatedPackageSources(spec *packageSchema, packageName, sdkLibraryName string) (map[string][]byte, map[string][]moduleAliasSpec) {
	files := map[string][]byte{}

	_ = packageName
	_ = sdkLibraryName
	typeFilesByName := map[string][]generatedTypeFile{}
	typeExports := make([]string, 0, len(spec.Enums)+len(spec.ObjectClasses))
	usedPaths := map[string]int{
		"sdk.dart": 1,
	}

	registrationFilePath := "internal/package_registration.dart"

	for _, enumSpec := range spec.Enums {
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(enumSpec.ModulePath, enumSpec.EnumName), usedPaths)
		addGeneratedTypeFile(typeFilesByName, enumSpec.EnumName, enumSpec.ModulePath, filePath)
	}
	for _, objectClass := range spec.ObjectClasses {
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(objectClass.ModulePath, objectClass.ClassName), usedPaths)
		addGeneratedTypeFile(typeFilesByName, objectClass.ClassName, objectClass.ModulePath, filePath)
	}

	for _, enumSpec := range spec.Enums {
		filePath, ok := resolveTypeFilePath(typeFilesByName, enumSpec.EnumName, enumSpec.ModulePath)
		if !ok {
			continue
		}
		typeExports = append(typeExports, filePath)
		files[filePath] = generatedEnumFile(enumSpec)
	}
	for _, objectClass := range spec.ObjectClasses {
		filePath, ok := resolveTypeFilePath(typeFilesByName, objectClass.ClassName, objectClass.ModulePath)
		if !ok {
			continue
		}
		typeExports = append(typeExports, filePath)
		files[filePath] = generatedObjectClassFile(objectClass, filePath, typeFilesByName)
	}

	sort.Strings(typeExports)
	moduleSymbolFiles := make([]string, 0, len(typeExports)+len(spec.Resources)+len(spec.Functions))
	moduleSymbolFiles = append(moduleSymbolFiles, typeExports...)

	resourceTokens := make([]string, 0, len(spec.Resources))
	for token := range spec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

	moduleAliases := map[string]map[string]moduleAliasSpec{}
	moduleSymbols := map[string]map[string]moduleAliasSpec{}
	moduleOccupiedSymbols := map[string]map[string]struct{}{}
	markModuleSymbol := func(moduleFilePath, name string) {
		if moduleFilePath == "" || name == "" {
			return
		}
		occupied, ok := moduleOccupiedSymbols[moduleFilePath]
		if !ok {
			occupied = map[string]struct{}{}
			moduleOccupiedSymbols[moduleFilePath] = occupied
		}
		occupied[name] = struct{}{}
	}
	recordModuleSymbol := func(kind, moduleFilePath, canonicalName, generatedName string) {
		if moduleFilePath == "" || canonicalName == "" || generatedName == "" {
			return
		}
		symbolsForModule, ok := moduleSymbols[moduleFilePath]
		if !ok {
			symbolsForModule = map[string]moduleAliasSpec{}
			moduleSymbols[moduleFilePath] = symbolsForModule
		}
		if _, exists := symbolsForModule[canonicalName]; exists {
			return
		}
		symbolsForModule[canonicalName] = moduleAliasSpec{
			Kind:          kind,
			CanonicalName: canonicalName,
			GeneratedName: generatedName,
		}
	}
	addModuleAlias := func(kind, moduleFilePath, canonicalName, generatedName, sourceFilePath string) {
		if resolved := moduleLibraryPathForSymbolFile(sourceFilePath); resolved != "" {
			moduleFilePath = resolved
		}
		recordModuleSymbol(kind, moduleFilePath, canonicalName, generatedName)
		if moduleFilePath == "" ||
			canonicalName == "" ||
			generatedName == "" ||
			sourceFilePath == "" ||
			canonicalName == generatedName {
			markModuleSymbol(moduleFilePath, generatedName)
			return
		}
		markModuleSymbol(moduleFilePath, generatedName)
		if occupied := moduleOccupiedSymbols[moduleFilePath]; occupied != nil {
			if _, exists := occupied[canonicalName]; exists {
				return
			}
		}
		importPath := relativeImportPath(moduleFilePath, sourceFilePath)
		aliasesForModule, ok := moduleAliases[moduleFilePath]
		if !ok {
			aliasesForModule = map[string]moduleAliasSpec{}
			moduleAliases[moduleFilePath] = aliasesForModule
		}
		if _, exists := aliasesForModule[canonicalName]; exists {
			return
		}
		aliasesForModule[canonicalName] = moduleAliasSpec{
			Kind:          kind,
			CanonicalName: canonicalName,
			GeneratedName: generatedName,
			ImportPath:    importPath,
		}
		markModuleSymbol(moduleFilePath, canonicalName)
	}

	for _, enumSpec := range spec.Enums {
		if filePath, ok := resolveTypeFilePath(typeFilesByName, enumSpec.EnumName, enumSpec.ModulePath); ok {
			addModuleAlias(
				"type",
				moduleLibraryFilePath(enumSpec.ModulePath),
				enumSpec.CanonicalName,
				enumSpec.EnumName,
				filePath,
			)
		}
	}
	for _, objectClass := range spec.ObjectClasses {
		if filePath, ok := resolveTypeFilePath(typeFilesByName, objectClass.ClassName, objectClass.ModulePath); ok {
			addModuleAlias(
				"type",
				moduleLibraryFilePath(objectClass.ModulePath),
				objectClass.CanonicalName,
				objectClass.ClassName,
				filePath,
			)
			if objectClass.CanonicalName != "" && !strings.HasSuffix(objectClass.CanonicalName, "Args") {
				addModuleAlias(
					"type",
					moduleLibraryFilePath(objectClass.ModulePath),
					canonicalTypeName(objectClass.CanonicalName, "Args"),
					objectClass.ClassName,
					filePath,
				)
			}
		}
	}

	resourceExports := make([]string, 0, len(resourceTokens))
	usedResourceClassNamesByModule := map[string]map[string]int{}
	for _, objectClass := range spec.ObjectClasses {
		usedNames := moduleScopedTypeNameSet(usedResourceClassNamesByModule, objectClass.ModulePath)
		if objectClass.ClassName != "" {
			usedNames[objectClass.ClassName] = 1
		}
	}
	if spec.Config != nil && spec.Config.ClassName != "" {
		moduleScopedTypeNameSet(usedResourceClassNamesByModule, "config")[spec.Config.ClassName] = 1
	}
	for _, token := range resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedResourceClassNamesByModule, modulePath))
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(tokenModulePath(token), className), usedPaths)
		resourceExports = append(resourceExports, filePath)
		files[filePath] = generatedResourceFile(
			token,
			spec.Resources[token],
			className,
			filePath,
			spec.Parameterization != nil,
			typeFilesByName,
			registrationFilePath,
		)

		moduleFilePath := moduleLibraryFilePath(modulePath)
		canonicalClassName := canonicalTypeName(tokenElementName(token))
		addModuleAlias("type", moduleFilePath, canonicalClassName, className, filePath)
		if argsClass := spec.Resources[token].ArgsClass; argsClass != "" {
			if argsPath, ok := resolveTypeFilePath(typeFilesByName, argsClass, modulePath); ok {
				addModuleAlias("type", moduleFilePath, canonicalTypeName(tokenElementName(token), "Args"), argsClass, argsPath)
			}
		}
	}

	functionTokens := make([]string, 0, len(spec.Functions))
	for token := range spec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)

	usedFunctionNamesByModule := map[string]map[string]int{}
	functionExports := make([]string, 0, len(functionTokens))
	functionExportsSet := map[string]struct{}{}
	functionsByFilePath := map[string][]generatedFunctionSpec{}
	functionFilePathByModule := map[string]string{}
	for _, token := range functionTokens {
		modulePath := tokenModulePath(token)
		funcName := functionNameFromToken(token, moduleScopedIdentifierSet(usedFunctionNamesByModule, modulePath))
		moduleScope := moduleScopeKey(modulePath)
		filePath, ok := functionFilePathByModule[moduleScope]
		if !ok {
			filePath = uniqueGeneratedFilePath(moduleClassFilePath(modulePath, "functions"), usedPaths)
			functionFilePathByModule[moduleScope] = filePath
		}
		if _, exists := functionExportsSet[filePath]; !exists {
			functionExports = append(functionExports, filePath)
			functionExportsSet[filePath] = struct{}{}
		}
		functionsByFilePath[filePath] = append(functionsByFilePath[filePath], generatedFunctionSpec{
			Token:      token,
			ModulePath: modulePath,
			Function:   spec.Functions[token],
			FuncName:   funcName,
		})

		moduleFilePath := moduleLibraryFilePath(modulePath)
		addModuleAlias("function", moduleFilePath, canonicalFunctionNameFromToken(token), funcName, filePath)

		baseName := toDartClassName(tokenElementName(token))
		if argsClass := spec.Functions[token].ArgsClass; argsClass != "" {
			if argsPath, ok := resolveTypeFilePath(typeFilesByName, argsClass, modulePath); ok {
				addModuleAlias("type", moduleFilePath, canonicalTypeName(baseName, "Args"), argsClass, argsPath)
			}
		}
		if resultClass := spec.Functions[token].ResultClass; resultClass != "" {
			if resultPath, ok := resolveTypeFilePath(typeFilesByName, resultClass, modulePath); ok {
				addModuleAlias("type", moduleFilePath, canonicalTypeName(baseName, "Result"), resultClass, resultPath)
			}
		}
	}
	for _, filePath := range functionExports {
		files[filePath] = generatedFunctionsFile(
			functionsByFilePath[filePath],
			filePath,
			spec.Parameterization != nil,
			typeFilesByName,
			registrationFilePath,
		)
	}

	if configFile := generatedConfigFile(spec, packageName, "config/config.dart", typeFilesByName); configFile != nil {
		files["config/config.dart"] = configFile
		usedPaths["config/config.dart"] = 1
	}
	if registrationFile := generatedPackageRegistrationFile(spec.Parameterization); registrationFile != nil {
		files[registrationFilePath] = registrationFile
		usedPaths[registrationFilePath] = 1
	}

	sort.Strings(resourceExports)
	moduleSymbolFiles = append(moduleSymbolFiles, resourceExports...)
	sort.Strings(functionExports)
	moduleSymbolFiles = append(moduleSymbolFiles, functionExports...)

	moduleFiles := generatedModuleLibraryFiles(moduleSymbolFiles)
	for modulePath, moduleContent := range moduleFiles {
		files[modulePath] = moduleContent
	}
	for modulePath, aliasesByCanonical := range moduleAliases {
		baseContent, ok := files[modulePath]
		if !ok {
			continue
		}
		aliases := make([]moduleAliasSpec, 0, len(aliasesByCanonical))
		for _, alias := range aliasesByCanonical {
			aliases = append(aliases, alias)
		}
		files[modulePath] = generatedAliasedModuleLibraryFile(modulePath, baseContent, aliases)
	}

	orderedModuleSymbols := map[string][]moduleAliasSpec{}
	for modulePath, symbolsByCanonical := range moduleSymbols {
		if len(symbolsByCanonical) == 0 {
			continue
		}
		symbols := make([]moduleAliasSpec, 0, len(symbolsByCanonical))
		for _, symbol := range symbolsByCanonical {
			symbols = append(symbols, symbol)
		}
		sort.Slice(symbols, func(i, j int) bool {
			return symbols[i].CanonicalName < symbols[j].CanonicalName
		})
		orderedModuleSymbols[modulePath] = symbols
	}

	return files, orderedModuleSymbols
}

func generatedModuleLibraryFiles(symbolFilePaths []string) map[string][]byte {
	if len(symbolFilePaths) == 0 {
		return map[string][]byte{}
	}

	symbolFilesByRootModule := map[string]map[string]struct{}{}
	for _, filePath := range symbolFilePaths {
		normalized := filepath.ToSlash(strings.TrimSpace(filePath))
		if normalized == "" {
			continue
		}
		if !strings.HasSuffix(normalized, ".dart") {
			continue
		}
		dir := filepath.ToSlash(filepath.Dir(normalized))
		if dir == "." || dir == "" {
			continue
		}
		rootModule := dir
		if idx := strings.Index(rootModule, "/"); idx >= 0 {
			rootModule = rootModule[:idx]
		}
		if rootModule == "" {
			continue
		}
		filesForRoot, ok := symbolFilesByRootModule[rootModule]
		if !ok {
			filesForRoot = map[string]struct{}{}
			symbolFilesByRootModule[rootModule] = filesForRoot
		}
		filesForRoot[normalized] = struct{}{}
	}

	rootModules := make([]string, 0, len(symbolFilesByRootModule))
	for rootModule := range symbolFilesByRootModule {
		rootModules = append(rootModules, rootModule)
	}
	sort.Strings(rootModules)

	moduleFiles := map[string][]byte{}
	for _, rootModule := range rootModules {
		moduleFilePath := filepath.ToSlash(rootModule + ".dart")
		var b strings.Builder
		fmt.Fprintf(&b, "library %s;\n\n", sanitizeDartIdentifier("module_"+strings.ReplaceAll(rootModule, "/", "_")))

		symbolFiles := make([]string, 0, len(symbolFilesByRootModule[rootModule]))
		for symbolFile := range symbolFilesByRootModule[rootModule] {
			symbolFiles = append(symbolFiles, symbolFile)
		}
		sort.Strings(symbolFiles)
		for _, symbolFile := range symbolFiles {
			fmt.Fprintf(&b, "export '%s';\n", relativeImportPath(moduleFilePath, symbolFile))
		}

		if len(symbolFiles) == 0 {
			b.WriteString("// No symbols generated for this module directory.\n")
		}

		moduleFiles[moduleFilePath] = []byte(b.String())
	}

	return moduleFiles
}

func generatedPublicModuleEntryPoints(packageName string, sdkSources map[string][]byte) map[string][]byte {
	rootModules := map[string]struct{}{}
	for relativePath, contents := range sdkSources {
		normalized := filepath.ToSlash(relativePath)
		if !strings.HasSuffix(normalized, ".dart") {
			continue
		}
		if !strings.HasPrefix(string(contents), "library module_") {
			continue
		}
		if strings.Contains(normalized, "/") {
			continue
		}
		moduleName := strings.TrimSuffix(normalized, ".dart")
		if moduleName == "" ||
			strings.HasPrefix(moduleName, "internal") ||
			strings.HasPrefix(moduleName, "config") {
			continue
		}
		rootModules[moduleName] = struct{}{}
	}

	entryPoints := map[string][]byte{}
	modulePaths := make([]string, 0, len(rootModules))
	for moduleDir := range rootModules {
		modulePaths = append(modulePaths, moduleDir)
	}
	sort.Strings(modulePaths)

	for _, moduleName := range modulePaths {
		entryPath := filepath.ToSlash(moduleName + ".dart")
		libraryName := sanitizeDartIdentifier(packageName + "_" + strings.ReplaceAll(moduleName, "/", "_"))
		entryContent := fmt.Sprintf(
			"library %s;\n\nexport 'package:%s/src/%s.dart';\n",
			libraryName,
			packageName,
			moduleName,
		)
		entryPoints[entryPath] = []byte(entryContent)
	}

	return entryPoints
}

func relativeImportPath(fromFile, toFile string) string {
	fromDir := filepath.Dir(filepath.ToSlash(fromFile))
	rel, err := filepath.Rel(fromDir, filepath.ToSlash(toFile))
	if err != nil {
		return filepath.ToSlash(toFile)
	}
	return filepath.ToSlash(rel)
}

func generatedPackageRootLibrary(packageName string, spec *packageSchema, moduleSymbols map[string][]moduleAliasSpec) []byte {
	modulePaths := make([]string, 0, len(moduleSymbols))
	for modulePath := range moduleSymbols {
		modulePaths = append(modulePaths, modulePath)
	}
	sort.Strings(modulePaths)

	enumSymbolsByModule := map[string]map[string]struct{}{}
	for _, enumSpec := range spec.Enums {
		modulePath := moduleLibraryFilePath(enumSpec.ModulePath)
		names, ok := enumSymbolsByModule[modulePath]
		if !ok {
			names = map[string]struct{}{}
			enumSymbolsByModule[modulePath] = names
		}
		if enumSpec.CanonicalName != "" {
			names[enumSpec.CanonicalName] = struct{}{}
		}
		if enumSpec.EnumName != "" {
			names[enumSpec.EnumName] = struct{}{}
		}
	}

	var b strings.Builder
	fmt.Fprintf(&b, "// ignore_for_file: non_constant_identifier_names\n\nlibrary %s;\n\n", packageName)
	for _, modulePath := range modulePaths {
		moduleName := strings.TrimSuffix(modulePath, ".dart")
		if moduleName == "" ||
			strings.Contains(moduleName, "/") ||
			strings.HasPrefix(moduleName, "internal") ||
			strings.HasPrefix(moduleName, "config") {
			continue
		}
		fmt.Fprintf(
			&b,
			"import 'package:%s/%s.dart' as _%s;\n",
			packageName,
			moduleName,
			sanitizeDartIdentifier(moduleName),
		)
	}
	if len(modulePaths) == 0 {
		b.WriteString("// No generated modules.\n")
		return []byte(b.String())
	}

	b.WriteString("\n")
	for _, modulePath := range modulePaths {
		moduleName := strings.TrimSuffix(modulePath, ".dart")
		if moduleName == "" ||
			strings.Contains(moduleName, "/") ||
			strings.HasPrefix(moduleName, "internal") ||
			strings.HasPrefix(moduleName, "config") {
			continue
		}
		moduleObjectName := sanitizeCallableIdentifier(strings.ReplaceAll(moduleName, "/", "_"))
		if moduleObjectName == "" {
			continue
		}
		namespaceClass := "_" + toDartClassName(moduleObjectName) + "ModuleNamespace"
		fmt.Fprintf(&b, "final %s = %s();\n", moduleObjectName, namespaceClass)
	}

	b.WriteString("\n")
	for _, modulePath := range modulePaths {
		moduleName := strings.TrimSuffix(modulePath, ".dart")
		if moduleName == "" ||
			strings.Contains(moduleName, "/") ||
			strings.HasPrefix(moduleName, "internal") ||
			strings.HasPrefix(moduleName, "config") {
			continue
		}
		moduleObjectName := sanitizeCallableIdentifier(strings.ReplaceAll(moduleName, "/", "_"))
		if moduleObjectName == "" {
			continue
		}
		namespaceClass := "_" + toDartClassName(moduleObjectName) + "ModuleNamespace"
		modulePrefix := "_" + sanitizeDartIdentifier(moduleName)
		fmt.Fprintf(&b, "class %s {\n", namespaceClass)
		fmt.Fprintf(&b, "  %s();\n", namespaceClass)

		symbols := moduleSymbols[modulePath]
		enumNames := enumSymbolsByModule[modulePath]
		for _, symbol := range symbols {
			fieldName := symbol.CanonicalName
			targetName := symbol.GeneratedName
			if fieldName == "" || targetName == "" {
				continue
			}

			if symbol.Kind == "function" {
				fmt.Fprintf(&b, "  final %s = %s.%s;\n", fieldName, modulePrefix, targetName)
				continue
			}

			if _, isEnum := enumNames[fieldName]; isEnum {
				fmt.Fprintf(&b, "  final %s = %s.%s.values;\n", fieldName, modulePrefix, targetName)
				continue
			}
			if _, isEnum := enumNames[targetName]; isEnum {
				fmt.Fprintf(&b, "  final %s = %s.%s.values;\n", fieldName, modulePrefix, targetName)
				continue
			}

			fmt.Fprintf(&b, "  final %s = %s.%s.new;\n", fieldName, modulePrefix, targetName)
		}
		b.WriteString("}\n\n")
	}

	return []byte(b.String())
}
