package codegen

import (
	"fmt"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
)

func generatedResourceFile(
	token string,
	resource packageResourceSpec,
	className string,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
	defaultVersion string,
	defaultPluginDownloadURL string,
) []byte {
	modulePath := tokenModulePath(token)
	imports := lowerResourceImports(
		resource,
		modulePath,
		filePath,
		hasPackageRegistration,
		typeFilesByName,
		registrationFilePath,
	)
	kind := dartir.CustomResource
	tokenValue := token
	if resource.IsProvider {
		kind = dartir.ProviderResource
		tokenValue = tokenProviderName(token)
		if tokenValue == "" {
			tokenValue = strings.TrimSpace(token)
		}
	} else if resource.IsComponent {
		kind = dartir.ComponentResource
	}

	argsDocs := ""
	if resource.ArgsClass != "" {
		argsDocs = fmt.Sprintf(
			"Arguments used to configure this [%s]. {@macro %s}",
			className,
			argsClassDocMacroName(modulePath, resource.ArgsClass),
		)
	} else if kind == dartir.CustomResource {
		argsDocs = "The raw input arguments for this resource."
	}
	return render.Resource(lower.ResourceClass(lower.Resource{
		Token:                    token,
		RegistrationToken:        tokenValue,
		ClassName:                className,
		Kind:                     kind,
		ArgsDocs:                 argsDocs,
		Imports:                  imports,
		Methods:                  planResourceMethods(token, resource.Methods),
		HasPackageRegistration:   hasPackageRegistration,
		DefaultVersion:           defaultVersion,
		DefaultPluginDownloadURL: defaultPluginDownloadURL,
		Schema:                   resource,
	}))
}
