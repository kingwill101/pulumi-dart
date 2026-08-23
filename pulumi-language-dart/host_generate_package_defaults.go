package main

import (
	"os"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func defaultGeneratedExtraFiles(packageName, packagePath, packageVersion string) map[string][]byte {
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
	}
}
