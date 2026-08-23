package lower

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/render"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
)

// Invoke contains the naming decisions needed to lower a schema function.
type Invoke struct {
	Token         string
	Name          string
	ArgsDocsMacro string
	Function      schemair.Function
}

// FunctionsLibrary lowers schema functions into a rendered Dart library.
func FunctionsLibrary(invokes []Invoke, imports []dartir.Import, hasPackageRegistration bool) []byte {
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
		}
	}

	return render.FunctionsLibrary(dartir.FunctionsLibrary{
		Imports:   append([]dartir.Import(nil), imports...),
		Functions: declarations,
	})
}
