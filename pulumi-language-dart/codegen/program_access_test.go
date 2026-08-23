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

func TestLowerResourceOutputValueTraversalFlattensNestedInputs(t *testing.T) {
	actual, err := lowerResourceOutputValueTraversal("value", hcl.Traversal{
		hcl.TraverseAttr{Name: "innerData"},
		hcl.TraverseAttr{Name: "stringMap"},
		hcl.TraverseIndex{Key: cty.StringVal("three")},
	}, []bool{true, true, false}, 0)
	require.NoError(t, err)
	require.Equal(t,
		"pulumi.output(value?.innerData).apply<dynamic>((nested0) => "+
			"pulumi.output(nested0?.stringMap).apply<dynamic>((nested1) => "+
			"pulumi.indexValue(nested1, 'three')))", actual)
}
