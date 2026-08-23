package lower

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

// Invoke contains the naming decisions needed to lower a schema function.
type Invoke struct {
	Token         string
	Name          string
	ArgsDocsMacro string
	Function      schemair.Function
}

func FunctionsLibrary(invokes []Invoke, imports []dartir.Import, hasPackageRegistration bool) dartir.FunctionsLibrary {
	declarations := make([]dartir.InvokeFunction, len(invokes))
	for index, invoke := range invokes {
		declarations[index] = dartir.InvokeFunction{
			Name:                   invoke.Name,
			Docs:                   invoke.Function.Comment,
			ArgsDocsMacro:          invoke.ArgsDocsMacro,
			ArgsClass:              invoke.Function.ArgsClass,
			HasArgs:                invoke.Function.HasArgs,
			ResultClass:            invoke.Function.ResultClass,
			TokenLiteral:           darttext.StringLiteral(invoke.Token),
			HasPackageRegistration: hasPackageRegistration,
			MultiArgumentInputs:    invoke.Function.MultiArgumentInputs,
			Parameters:             lowerInvokeParameters(invoke.Function.Parameters),
		}
	}

	return dartir.FunctionsLibrary{
		Imports:   append([]dartir.Import(nil), imports...),
		Functions: declarations,
	}
}

func lowerInvokeParameters(properties []schemair.Property) []dartir.InvokeParameter {
	parameters := make([]dartir.InvokeParameter, len(properties))
	for index, property := range properties {
		parameters[index] = dartir.InvokeParameter{
			Name: property.FieldName,
			DartType: ObjectPropertyType(
				schemair.ObjectClass{UsesInputTypes: true},
				property,
			),
		}
	}
	return parameters
}
