package main

import (
	"sort"
	"strings"
)

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

	// Pre-reserve resource file paths and add them to the type lookup so object
	// classes can import resource types referenced in args/result shapes.
	resourceTokens := make([]string, 0, len(spec.Resources))
	for token := range spec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

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

	resourceClassNameByToken := map[string]string{}
	resourceFilePathByToken := map[string]string{}
	for _, token := range resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedResourceClassNamesByModule, modulePath))
		filePath := uniqueGeneratedFilePath(moduleClassFilePath(modulePath, className), usedPaths)
		resourceClassNameByToken[token] = className
		resourceFilePathByToken[token] = filePath
		addGeneratedTypeFile(typeFilesByName, className, modulePath, filePath)
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
	for _, token := range resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameByToken[token]
		filePath := resourceFilePathByToken[token]
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
