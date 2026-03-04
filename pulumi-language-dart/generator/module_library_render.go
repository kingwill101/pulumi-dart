package generator

import (
	"fmt"
	"path/filepath"
	"sort"
	"strings"
)

func moduleLibraryDirective(moduleFilePath string) string {
	return ""
}

type AliasSpec struct {
	Kind          string
	CanonicalName string
	GeneratedName string
	ImportPath    string
}

func ModuleLibraryPathForSymbolFile(symbolFilePath string) string {
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

func GeneratedAliasedModuleLibraryFile(moduleFilePath string, baseContent []byte, aliases []AliasSpec) []byte {
	_ = moduleFilePath
	exportPaths := ModuleExportPathsFromContent(baseContent)
	imports := map[string]struct{}{}
	aliasByCanonical := map[string]AliasSpec{}
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

	orderedAliases := make([]AliasSpec, 0, len(aliasByCanonical))
	for _, alias := range aliasByCanonical {
		orderedAliases = append(orderedAliases, alias)
	}
	sort.Slice(orderedAliases, func(i, j int) bool {
		return orderedAliases[i].CanonicalName < orderedAliases[j].CanonicalName
	})

	var b strings.Builder
	if directive := moduleLibraryDirective(moduleFilePath); directive != "" {
		b.WriteString(directive)
		b.WriteString("\n\n")
	}
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

func GeneratedModuleLibraryFiles(symbolFilePaths []string) map[string][]byte {
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
		if directive := moduleLibraryDirective(moduleFilePath); directive != "" {
			b.WriteString(directive)
			b.WriteString("\n\n")
		}

		symbolFiles := make([]string, 0, len(symbolFilesByRootModule[rootModule]))
		for symbolFile := range symbolFilesByRootModule[rootModule] {
			symbolFiles = append(symbolFiles, symbolFile)
		}
		sort.Strings(symbolFiles)
		for _, symbolFile := range symbolFiles {
			fmt.Fprintf(&b, "export '%s';\n", RelativeImportPath(moduleFilePath, symbolFile))
		}

		if len(symbolFiles) == 0 {
			b.WriteString("// No symbols generated for this module directory.\n")
		}

		moduleFiles[moduleFilePath] = []byte(b.String())
	}

	return moduleFiles
}
