package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestConfigLowersPropertiesAndRequiredAccessors(t *testing.T) {
	t.Parallel()

	actual := string(Config(schemair.Config{
		ClassName: "ExampleConfig",
		Properties: []schemair.Property{
			{
				Name:      "region",
				FieldName: "region",
				Required:  true,
				TypeSpec:  schemair.Type{Kind: "scalar", DartType: "String"},
			},
		},
	}, []dartir.Import{
		{URI: "package:pulumi/pulumi.dart", Prefix: "pulumi"},
	}, map[string]string{"region": "requireRegion"}))

	require.Contains(t, actual, "String? get region")
	require.Contains(t, actual, "final raw = _raw('region');")
	require.Contains(t, actual, "String requireRegion()")
}
