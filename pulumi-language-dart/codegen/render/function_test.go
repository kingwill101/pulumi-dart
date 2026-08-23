package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestFunctionsLibraryRendersTypedAndUntypedInvokes(t *testing.T) {
	t.Parallel()

	actual := string(FunctionsLibrary(dartir.FunctionsLibrary{
		Imports: []dartir.Import{
			{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"},
			{URI: "types.dart"},
		},
		Functions: []dartir.InvokeFunction{
			{
				Name:                   "getWidget",
				Docs:                   "Gets a widget.",
				ArgsDocsMacro:          "get_widget_args",
				ArgsClass:              "GetWidgetArgs",
				HasArgs:                true,
				ResultClass:            "GetWidgetResult",
				TokenLiteral:           "'example:index:getWidget'",
				HasPackageRegistration: true,
			},
			{
				Name:         "listWidgets",
				TokenLiteral: "'example:index:listWidgets'",
			},
			{
				Name:          "listFlags",
				TokenLiteral:  "'example:index:listFlags'",
				ResultType:    "List<bool>",
				ResultDecoder: "(value as List).cast<bool>()",
			},
			{
				Name:                "lookupWidget",
				ArgsClass:           "LookupWidgetArgs",
				HasArgs:             true,
				MultiArgumentInputs: true,
				Parameters: []dartir.InvokeParameter{
					{Name: "name", DartType: "pulumi.Input<String>"},
					{Name: "region", DartType: "pulumi.Input<String>?"},
				},
				TokenLiteral: "'example:index:lookupWidget'",
			},
		},
	}))

	require.Contains(t, actual, "import 'types.dart';")
	require.Contains(t, actual, "Future<GetWidgetResult> getWidget(")
	require.Contains(t, actual, "GetWidgetArgs args")
	require.Contains(t, actual, "registerPackageRequest: package_registration.registerPackageRequest")
	require.Contains(t, actual, "return GetWidgetResult.fromMap(result);")
	require.Contains(t, actual, "Future<Map<String, dynamic>> listWidgets(")
	require.Contains(t, actual, "Future<List<bool>> listFlags(")
	require.Contains(t, actual, "deployment.invokeSingle<dynamic>(")
	require.Contains(t, actual, "return (value as List).cast<bool>();")
	require.Contains(t, actual, "pulumi.Output<List<bool>> listFlagsOutput(")
	require.Contains(t, actual, "pulumi.invokeSingleOutput<dynamic>(")
	require.Contains(t, actual, ".apply<List<bool>>((value) => (value as List).cast<bool>())")
	require.Contains(t, actual, "const <String, dynamic>{}")
	require.Contains(t, actual, "pulumi.Input<String> name,")
	require.Contains(t, actual, "pulumi.Input<String>? region,")
	require.Contains(t, actual, "LookupWidgetArgs(name: name, region: region, ).toMap()")
}
