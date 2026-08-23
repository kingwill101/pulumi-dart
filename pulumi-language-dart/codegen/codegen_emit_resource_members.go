package codegen

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"

func lowerResourceMembers(
	resourceToken string,
	resource packageResourceSpec,
	className string,
	hasPackageRegistration bool,
) dartir.ResourceMembers {
	members := dartir.ResourceMembers{
		Methods: lowerResourceMethods(resourceToken, resource.Methods, hasPackageRegistration),
	}
	if resource.StateClass == "" || resource.IsProvider || resource.IsComponent {
		return members
	}

	assignments := make([]dartir.Assignment, len(resource.OutputProperties))
	constructorNames := []string{"name", "state", "options"}
	for index, property := range resource.OutputProperties {
		assignments[index] = dartir.Assignment{
			Target:     registerOutputAssignmentTarget(property.FieldName, constructorNames...),
			Expression: resourceRegisterOutputExpression(property),
		}
	}
	members.Get = &dartir.ResourceGet{
		ClassName:         className,
		StateClass:        resource.StateClass,
		TokenLiteral:      dartStringLiteral(resourceToken),
		OutputAssignments: assignments,
	}
	return members
}

func lowerResourceMethods(
	resourceToken string,
	methods []packageResourceMethodSpec,
	hasPackageRegistration bool,
) []dartir.ResourceMethod {
	declarations := make([]dartir.ResourceMethod, 0, len(methods))
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
		methodToken := method.Token
		if methodToken == "" {
			methodToken = method.Name
		}
		argsDocsMacro := ""
		if method.ArgsClass != "" {
			argsDocsMacro = argsClassDocMacroName(tokenModulePath(resourceToken), method.ArgsClass)
		}
		declarations = append(declarations, dartir.ResourceMethod{
			Name:                   claimUniqueIdentifierFromCandidates(nameCandidates, usedMethodNames),
			Docs:                   method.Comment,
			ArgsDocsMacro:          argsDocsMacro,
			ArgsClass:              method.ArgsClass,
			ResultClass:            method.ResultClass,
			HasReturn:              method.HasReturn,
			TokenLiteral:           dartStringLiteral(methodToken),
			HasPackageRegistration: hasPackageRegistration,
		})
	}
	return declarations
}
