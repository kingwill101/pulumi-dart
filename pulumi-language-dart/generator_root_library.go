package main

import (
	"fmt"
	"sort"
	"strings"
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

	var b strings.Builder
	fmt.Fprintf(&b, "// ignore_for_file: non_constant_identifier_names\n\n")
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
			"import 'package:%s/%s.dart' as %s;\n",
			packageName,
			moduleName,
			moduleImportPrefix(moduleName),
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
		modulePrefix := moduleImportPrefix(moduleName)
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

	out := b.String()
	if strings.HasSuffix(out, "\n\n") {
		out = strings.TrimSuffix(out, "\n")
	}
	return []byte(out)
}

func moduleImportPrefix(moduleName string) string {
	return sanitizeDartIdentifier("module_" + strings.ReplaceAll(moduleName, "/", "_"))
}
