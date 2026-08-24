package lower

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"

func resourceConstructorParameterNames(kind dartir.ResourceKind, hasArgsClass bool) []string {
	if (kind == dartir.ProviderResource || kind == dartir.ComponentResource) && !hasArgsClass {
		return []string{"name", "options"}
	}
	return []string{"name", "args", "options"}
}
