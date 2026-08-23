package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
)

func TestProviderObjectTypeNameUsesGeneratedPlainShapeName(t *testing.T) {
	t.Parallel()

	plain := &schema.ObjectType{Token: "secret:index:Data"}
	input := &schema.ObjectType{Token: "secret:index:DataArgs", PlainShape: plain}
	pkg, module, className := providerObjectTypeName("fallback", input)

	require.Equal(t, "secret", pkg)
	require.Equal(t, "index", module)
	require.Equal(t, "Data", className)
}
