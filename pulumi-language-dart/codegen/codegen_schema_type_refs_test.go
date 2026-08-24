package codegen

import (
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/stretchr/testify/require"
)

func TestSchemaNamedTokenTypeSpecControlsReferenceTypes(t *testing.T) {
	t.Parallel()

	named := packageNamedTypeRef{
		Kind:             "object",
		Name:             "Widget",
		UnderlyingType:   "Map<String, dynamic>",
		UseReferenceType: true,
	}

	referenced := schemaNamedTokenTypeSpec(named, true)
	require.Equal(t, "Widget", referenced.DartType)
	require.Equal(t, "Widget", referenced.ReferenceType)

	wireOnly := schemaNamedTokenTypeSpec(named, false)
	require.Equal(t, "Map<String, dynamic>", wireOnly.DartType)
	require.Empty(t, wireOnly.ReferenceType)
}

func TestSchemaResourceTypeSpecUsesProviderResourceForProviderTokens(t *testing.T) {
	t.Parallel()

	spec := schemaResourceTypeSpec(
		&schema.ResourceType{Token: "pulumi:providers:sample"},
		nil,
		true,
		"sample",
	)

	require.Equal(t, "resource", spec.Kind)
	require.Equal(t, "pulumi.ProviderResource", spec.DartType)
	require.Equal(t, "pulumi.ProviderResource", spec.ReferenceType)
}
