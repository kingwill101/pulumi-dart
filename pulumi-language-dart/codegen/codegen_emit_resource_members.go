package codegen

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"

func planResourceMethods(
	resourceToken string,
	methods []packageResourceMethodSpec,
) []lower.ResourceMethod {
	declarations := make([]lower.ResourceMethod, 0, len(methods))
	usedMethodNames := map[string]int{}
	for _, method := range methods {
		if method.Name == "" && method.Token == "" {
			continue
		}
		nameCandidates := make([]string, 0, 3)
		if method.Name != "" {
			nameCandidates = append(nameCandidates, method.Name)
		}
		if method.Token != "" {
			nameCandidates = append(nameCandidates, functionNameCandidatesFromToken(method.Token)...)
		}
		argsDocsMacro := ""
		if method.ArgsClass != "" {
			argsDocsMacro = argsClassDocMacroName(tokenModulePath(resourceToken), method.ArgsClass)
		}
		declarations = append(declarations, lower.ResourceMethod{
			Name:          claimUniqueIdentifierFromCandidates(nameCandidates, usedMethodNames),
			ArgsDocsMacro: argsDocsMacro,
			Method:        method,
		})
	}
	return declarations
}
