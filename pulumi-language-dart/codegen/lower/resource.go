package lower

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

// ResourceMethod contains the naming decisions needed to lower a resource method.
type ResourceMethod struct {
	Name          string
	ArgsDocsMacro string
	Method        schemair.ResourceMethod
}

// Resource contains the package-layout decisions needed to lower a resource.
type Resource struct {
	Token                  string
	RegistrationToken      string
	ClassName              string
	Kind                   dartir.ResourceKind
	ArgsDocs               string
	Imports                []dartir.Import
	Methods                []ResourceMethod
	HasPackageRegistration bool
	Schema                 schemair.Resource
}

// ResourceLibrary lowers a schema resource into a rendered Dart library.
func ResourceLibrary(resource Resource) []byte {
	outputs := make([]dartir.ResourceOutput, len(resource.Schema.OutputProperties))
	assignments := make([]dartir.Assignment, len(resource.Schema.OutputProperties))
	constructorNames := resourceConstructorParameterNames(resource.Kind, resource.Schema.ArgsClass != "")
	for index, property := range resource.Schema.OutputProperties {
		outputs[index] = dartir.ResourceOutput{
			Name: property.FieldName,
			Docs: property.Comment,
			Type: ResourceOutputValueType(property),
		}
		assignments[index] = dartir.Assignment{
			Target:     RegisterOutputAssignmentTarget(property.FieldName, constructorNames...),
			Expression: ResourceRegisterOutputExpression(property),
		}
	}

	return render.Resource(dartir.ResourceClass{
		Name:                   resource.ClassName,
		Docs:                   resource.Schema.Comment,
		Kind:                   resource.Kind,
		Imports:                append([]dartir.Import(nil), resource.Imports...),
		ArgsClass:              resource.Schema.ArgsClass,
		ArgsDocs:               resource.ArgsDocs,
		TokenLiteral:           darttext.StringLiteral(resource.RegistrationToken),
		HasPackageRegistration: resource.HasPackageRegistration,
		Outputs:                outputs,
		ConstructorAssignments: assignments,
		Members:                resourceMembers(resource),
	})
}

func resourceMembers(resource Resource) dartir.ResourceMembers {
	members := dartir.ResourceMembers{
		Methods: make([]dartir.ResourceMethod, len(resource.Methods)),
	}
	for index, method := range resource.Methods {
		methodToken := method.Method.Token
		if methodToken == "" {
			methodToken = method.Method.Name
		}
		members.Methods[index] = dartir.ResourceMethod{
			Name:                   method.Name,
			Docs:                   method.Method.Comment,
			ArgsDocsMacro:          method.ArgsDocsMacro,
			ArgsClass:              method.Method.ArgsClass,
			ResultClass:            method.Method.ResultClass,
			HasReturn:              method.Method.HasReturn,
			TokenLiteral:           darttext.StringLiteral(methodToken),
			HasPackageRegistration: resource.HasPackageRegistration,
		}
	}

	if resource.Schema.StateClass == "" || resource.Schema.IsProvider || resource.Schema.IsComponent {
		return members
	}
	assignments := make([]dartir.Assignment, len(resource.Schema.OutputProperties))
	for index, property := range resource.Schema.OutputProperties {
		assignments[index] = dartir.Assignment{
			Target:     RegisterOutputAssignmentTarget(property.FieldName, "name", "state", "options"),
			Expression: ResourceRegisterOutputExpression(property),
		}
	}
	members.Get = &dartir.ResourceGet{
		ClassName:         resource.ClassName,
		StateClass:        resource.Schema.StateClass,
		TokenLiteral:      darttext.StringLiteral(resource.Token),
		OutputAssignments: assignments,
	}
	return members
}

func resourceConstructorParameterNames(kind dartir.ResourceKind, hasArgsClass bool) []string {
	if (kind == dartir.ProviderResource || kind == dartir.ComponentResource) && !hasArgsClass {
		return []string{"name", "options"}
	}
	return []string{"name", "args", "options"}
}
