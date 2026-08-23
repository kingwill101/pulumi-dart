package codegen

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func generatedPackageRegistrationFile(parameterization *packageParameterizationSpec) []byte {
	registration := lower.PackageRegistration(parameterization)
	if registration == nil {
		return nil
	}
	return render.PackageRegistration(*registration)
}
