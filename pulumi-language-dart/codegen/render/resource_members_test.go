package render

import (
	"strings"
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestWriteResourceMembers(t *testing.T) {
	t.Parallel()

	var output strings.Builder
	WriteResourceMembers(&output, dartir.ResourceMembers{
		Methods: []dartir.ResourceMethod{
			{
				Name:                   "refresh",
				ArgsClass:              "RefreshArgs",
				ResultClass:            "RefreshResult",
				TokenLiteral:           "'example:index:Widget/refresh'",
				HasPackageRegistration: true,
			},
		},
		Get: &dartir.ResourceGet{
			ClassName:    "Widget",
			StateClass:   "WidgetState",
			TokenLiteral: "'example:index:Widget'",
			OutputAssignments: []dartir.Assignment{
				{Target: "status", Expression: "registerOutput<String>('status')"},
			},
		},
	})

	actual := output.String()
	require.Contains(t, actual, "Future<RefreshResult> refresh(")
	require.Contains(t, actual, "RefreshArgs? args")
	require.Contains(t, actual, "registerPackageRequest: package_registration.registerPackageRequest")
	require.Contains(t, actual, "static Widget get(")
	require.Contains(t, actual, "Widget._get(")
	require.Contains(t, actual, "status = registerOutput<String>('status');")
}
