package main

import (
	"os"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
)

func defaultGeneratedExtraFiles(
	packageName, packagePath, packageVersion string,
	spec *codegen.PackageSchema,
) map[string][]byte {
	files := map[string][]byte{
		"README.md": codegen.GeneratedPackageReadme(
			spec,
			packageName,
			packagePath,
			os.Getenv("PULUMI_DART_SDK_GIT_URL"),
			os.Getenv("PULUMI_DART_SDK_GIT_REF"),
		),
		"CHANGELOG.md":          codegen.GeneratedPackageChangelog(packageVersion),
		"analysis_options.yaml": codegen.GeneratedPackageAnalysisOptions(),
		"example/main.dart":     codegen.GeneratedPackageExampleMain(packageName),
		"pulumi-plugin.json":    codegen.GeneratedPulumiPluginJSON(spec),
	}
	if license := codegen.GeneratedPackageLicense(spec.License); len(license) > 0 {
		files["LICENSE"] = license
	}
	return files
}
