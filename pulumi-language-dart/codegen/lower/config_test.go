package lower

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/require"
)

func TestConfigLowersPropertiesAndRequiredAccessors(t *testing.T) {
	t.Parallel()

	actual := Config(schemair.Config{
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
	}, map[string]string{"region": "requireRegion"})

	require.Equal(t, "ExampleConfig", actual.ClassName)
	require.Equal(t, "String?", actual.Properties[0].GetterType)
	require.Equal(t, `'region'`, actual.Properties[0].NameLiteral)
	require.Equal(t, "requireRegion", actual.Properties[0].Required.MethodName)
	require.Equal(t, "String", actual.Properties[0].Required.ReturnType)
}
