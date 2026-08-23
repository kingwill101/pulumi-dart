package codegen

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func generatedPackageRegistrationFile(parameterization *packageParameterizationSpec) []byte {
	if parameterization == nil ||
		parameterization.PluginName == "" ||
		parameterization.PluginVersion == "" ||
		parameterization.PackageVersion == "" {
		return nil
	}

	return render.PackageRegistration(dartir.PackageRegistration{
		PluginName:     parameterization.PluginName,
		PluginVersion:  parameterization.PluginVersion,
		DownloadURL:    parameterization.DownloadURL,
		PackageName:    parameterization.PackageName,
		PackageVersion: parameterization.PackageVersion,
		Value:          append([]byte(nil), parameterization.Value...),
	})
}
