package codegen

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"

func generatedPackageRegistrationFile(parameterization *packageParameterizationSpec) []byte {
	return lower.PackageRegistration(parameterization)
}
