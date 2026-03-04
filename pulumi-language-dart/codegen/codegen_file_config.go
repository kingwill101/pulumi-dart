package codegen

import (
	"fmt"
	"sort"
	"strings"
)

// generatedConfigFile renders the generated config accessors file for provider
// package configuration variables.
//
// The file includes only the imports needed by discovered config property
// references and external provider types.
func generatedConfigFile(
	spec *packageSchema,
	packageName string,
	filePath string,
	typeFilesByName map[string][]generatedTypeFile,
) []byte {
	if spec.Config == nil {
		return nil
	}

	var b strings.Builder
	_ = packageName
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")

	configNeedsJSONDecode := false
	for _, property := range spec.Config.Properties {
		if configTypeRequiresJSONDecode(propertyTypeSpec(property)) {
			configNeedsJSONDecode = true
			break
		}
	}
	if configNeedsJSONDecode {
		b.WriteString("import 'dart:convert';\n")
	}
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")

	imports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(spec.Config.Properties) {
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, "config"); ok {
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
	externalImports := externalImportsFromProperties(spec.Config.Properties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		fmt.Fprintf(&b, "import '%s' as %s;\n", path, externalImports[path])
	}
	b.WriteString("\n")

	writeGeneratedConfigClass(&b, *spec.Config)
	return []byte(b.String())
}
