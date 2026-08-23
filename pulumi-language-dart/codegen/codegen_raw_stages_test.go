package codegen

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestParseExternalSchemaRef(t *testing.T) {
	t.Parallel()

	ref, ok := parseExternalSchemaRef(
		"/aws/v7.15.0/schema.json#/resources/aws:ecr/repository:Repository",
	)

	require.True(t, ok)
	require.Equal(t, "aws", ref.ProviderName)
	require.Equal(t, "7.15.0", ref.ProviderVersion)
	require.Equal(t, "resources", ref.RefKind)
	require.Equal(t, "aws:ecr/repository:Repository", ref.Token)
	require.Equal(t, "package:pulumi_aws/ecr.dart", ref.ImportPath)
	require.Equal(t, "pulumi_aws_ecr.Repository", ref.QualifiedType)
}

func TestParseExternalSchemaRefRejectsLocalRefs(t *testing.T) {
	t.Parallel()

	_, ok := parseExternalSchemaRef("#/types/example:index:Widget")

	require.False(t, ok)
}

func TestDartTypeSpecFromRawPropertyTypeLowersNestedCollections(t *testing.T) {
	t.Parallel()

	typeSpec := dartTypeSpecFromRawPropertyType(
		rawPropertyTypeSpec{
			Type: "array",
			Items: &rawPropertyTypeSpec{
				Type: "object",
				AdditionalProperties: &rawPropertyTypeSpec{
					Type: "integer",
				},
			},
		},
		nil,
		false,
		nil,
	)

	require.Equal(t, "array", typeSpec.Kind)
	require.Equal(t, "List<Map<String, int>>", typeSpec.DartType)
	require.NotNil(t, typeSpec.ElementType)
	require.Equal(t, "map", typeSpec.ElementType.Kind)
}

func TestDartStringLiteralEscapesDartInterpolation(t *testing.T) {
	t.Parallel()

	require.Equal(t, `'can\'t interpolate \$value'`, dartStringLiteral("can't interpolate $value"))
}
