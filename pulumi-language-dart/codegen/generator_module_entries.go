package codegen

import (
	"fmt"
	"path/filepath"
	"sort"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

type moduleAliasSpec struct {
	Kind          string
	CanonicalName string
	GeneratedName string
	ImportPath    string
}

func generatedAliasedModuleLibraryFile(_ string, baseContent []byte, aliases []moduleAliasSpec) []byte {
	imports := map[string]struct{}{}
	aliasesByName := map[string]moduleAliasSpec{}
	for _, alias := range aliases {
		if alias.Kind != "function" || alias.CanonicalName == "" || alias.GeneratedName == "" ||
			alias.ImportPath == "" || alias.CanonicalName == alias.GeneratedName {
			continue
		}
		if _, exists := aliasesByName[alias.CanonicalName]; exists {
			continue
		}
		aliasesByName[alias.CanonicalName] = alias
		imports[alias.ImportPath] = struct{}{}
	}
	aliasNames := make([]string, 0, len(aliasesByName))
	for name := range aliasesByName {
		aliasNames = append(aliasNames, name)
	}
	sort.Strings(aliasNames)
	loweredAliases := make([]dartir.ModuleAlias, len(aliasNames))
	for index, name := range aliasNames {
		loweredAliases[index] = dartir.ModuleAlias{Name: name, Expression: aliasesByName[name].GeneratedName}
	}
	return render.ModuleLibrary(dartir.ModuleLibrary{
		Imports: sortedStringSet(imports),
		Exports: moduleExportPathsFromContent(baseContent),
		Aliases: loweredAliases,
	})
}

func generatedModuleLibraryFiles(symbolFilePaths []string) map[string][]byte {
	filesByModule := map[string]map[string]struct{}{}
	for _, filePath := range symbolFilePaths {
		normalized := filepath.ToSlash(strings.TrimSpace(filePath))
		modulePath := moduleLibraryPathForSymbolFile(normalized)
		if normalized == "" || !strings.HasSuffix(normalized, ".dart") ||
			modulePath == "" || !strings.Contains(normalized, "/") {
			continue
		}
		if filesByModule[modulePath] == nil {
			filesByModule[modulePath] = map[string]struct{}{}
		}
		filesByModule[modulePath][relativeImportPath(modulePath, normalized)] = struct{}{}
	}
	result := map[string][]byte{}
	for modulePath, exports := range filesByModule {
		result[modulePath] = render.ModuleLibrary(dartir.ModuleLibrary{Exports: sortedStringSet(exports)})
	}
	return result
}

func generatedPublicModuleEntryPoints(packageName string, sdkSources map[string][]byte) map[string][]byte {
	result := map[string][]byte{}
	for relativePath := range sdkSources {
		normalized := filepath.ToSlash(relativePath)
		if !publicModuleEntryPoint(normalized) {
			continue
		}
		moduleName := strings.TrimSuffix(normalized, ".dart")
		result[normalized] = render.ModuleLibrary(dartir.ModuleLibrary{
			Exports: []string{fmt.Sprintf("package:%s/src/%s.dart", packageName, moduleName)},
		})
	}
	return result
}
