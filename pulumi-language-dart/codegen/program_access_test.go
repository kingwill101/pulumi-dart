package codegen

import (
	"testing"

	"github.com/hashicorp/hcl/v2"
	"github.com/stretchr/testify/require"
	"github.com/zclconf/go-cty/cty"
)

func TestLowerResourceTraversalRenderingLiftsNestedAccess(t *testing.T) {
	actual, err := lowerDartTraversalWithPropertyAccess("value", hcl.Traversal{
		hcl.TraverseIndex{Key: cty.NumberIntVal(0)},
		hcl.TraverseAttr{Name: "displayName"},
	}, []bool{false, true}, true)
	require.NoError(t, err)
	require.Equal(
		t,
		"pulumi.indexValue(value, 0)?.displayName",
		actual,
	)
}
