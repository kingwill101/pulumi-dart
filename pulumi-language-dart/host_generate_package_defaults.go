package main

import (
	"encoding/json"
	"os"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func defaultGeneratedExtraFiles(packageName, packagePath, packageVersion string) map[string][]byte {
	plugin, _ := json.MarshalIndent(map[string]interface{}{
		"resource": true,
		"name":     packagePath,
		"version":  packageVersion,
	}, "", "  ")
	plugin = append(plugin, '\n')
	return map[string][]byte{
		"README.md": codegen.GeneratedPackageReadme(
			packageName,
			packagePath,
			os.Getenv("PULUMI_DART_SDK_GIT_URL"),
			os.Getenv("PULUMI_DART_SDK_GIT_REF"),
		),
		"CHANGELOG.md":          codegen.GeneratedPackageChangelog(packageVersion),
		"analysis_options.yaml": codegen.GeneratedPackageAnalysisOptions(),
		"example/main.dart":     codegen.GeneratedPackageExampleMain(packageName),
		"pulumi-plugin.json":    plugin,
	}
}
