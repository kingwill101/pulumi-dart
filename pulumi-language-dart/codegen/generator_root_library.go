package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

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

	modules := make([]dartir.ModuleNamespace, 0, len(modulePaths))
	for _, modulePath := range modulePaths {
		moduleName, ok := rootLibraryModuleName(modulePath)
		if !ok {
			continue
		}
		moduleObjectName := sanitizeCallableIdentifier(strings.ReplaceAll(moduleName, "/", "_"))
		if moduleObjectName == "" {
			continue
		}
		namespaceClass := "_" + toDartClassName(moduleObjectName) + "ModuleNamespace"
		modulePrefix := moduleImportPrefix(moduleName)
		symbols := make([]dartir.NamespaceSymbol, 0, len(moduleSymbols[modulePath]))
		enumNames := enumSymbolsByModule[modulePath]
		for _, symbol := range moduleSymbols[modulePath] {
			fieldName := symbol.CanonicalName
			targetName := symbol.GeneratedName
			if fieldName == "" || targetName == "" {
				continue
			}
			expressionSuffix := ".new"
			if symbol.Kind == "function" {
				expressionSuffix = ""
			} else if _, isEnum := enumNames[fieldName]; isEnum {
				expressionSuffix = ".values"
			} else if _, isEnum := enumNames[targetName]; isEnum {
				expressionSuffix = ".values"
			}
			symbols = append(symbols, dartir.NamespaceSymbol{
				Name:       fieldName,
				Expression: fmt.Sprintf("%s.%s%s", modulePrefix, targetName, expressionSuffix),
			})
		}
		modules = append(modules, dartir.ModuleNamespace{
			ImportURI:    fmt.Sprintf("package:%s/%s.dart", packageName, moduleName),
			ImportPrefix: modulePrefix,
			ObjectName:   moduleObjectName,
			ClassName:    namespaceClass,
			Symbols:      symbols,
		})
	}
	return render.RootLibrary(dartir.RootLibrary{
		HasGeneratedModules: len(modulePaths) > 0,
		Modules:             modules,
	})
}

func rootLibraryModuleName(modulePath string) (string, bool) {
	moduleName := strings.TrimSuffix(modulePath, ".dart")
	if moduleName == "" || strings.Contains(moduleName, "/") ||
		strings.HasPrefix(moduleName, "internal") || strings.HasPrefix(moduleName, "config") {
		return "", false
	}
	return moduleName, true
}

func moduleImportPrefix(moduleName string) string {
	return sanitizeDartIdentifier("module_" + strings.ReplaceAll(moduleName, "/", "_"))
}
