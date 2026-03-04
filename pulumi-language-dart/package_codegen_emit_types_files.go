package main

import (
	"fmt"
	"sort"
	"strings"
)

func generatedObjectClassFile(
	objectClass packageObjectClassSpec,
	filePath string,
	typeFilesByName map[string][]generatedTypeFile,
) []byte {
	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")
	if objectClass.UsesInputTypes || objectClassNeedsObjectHelpers(objectClass) {
		b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")
	}

	imports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(objectClass.Properties) {
		if ref == objectClass.ClassName {
			continue
		}
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, objectClass.ModulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	externalImports := externalImportsFromProperties(objectClass.Properties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		fmt.Fprintf(&b, "import '%s' as %s;\n", path, externalImports[path])
	}
	b.WriteString("\n")

	writeGeneratedObjectClass(&b, objectClass)
	return []byte(b.String())
}

func generatedEnumFile(enumSpec packageEnumSpec) []byte {
	var b strings.Builder
	writeGeneratedEnumClass(&b, enumSpec)
	return []byte(b.String())
}
