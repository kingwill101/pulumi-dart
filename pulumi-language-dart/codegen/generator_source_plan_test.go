package codegen

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestSourcePlanReservesDistinctTypeAndResourcePaths(t *testing.T) {
	t.Parallel()

	spec := &packageSchema{
		ObjectClasses: []packageObjectClassSpec{{
			ClassName:  "Bucket",
			ModulePath: "index",
		}},
		Resources: map[string]packageResourceSpec{
			"sample:index:Bucket": {},
		},
	}
	plan := newSourcePlan(spec, "pulumi_sample", "pulumi_sample_sdk")
	plan.reserveTypePaths()
	plan.reserveResourcePaths()

	objectPath, ok := resolveTypeFilePath(plan.typeFilesByName, "Bucket", "index")
	require.True(t, ok)
	resourcePath := plan.resourcePaths["sample:index:Bucket"]
	require.NotEmpty(t, resourcePath)
	require.NotEqual(t, objectPath, resourcePath)
	require.Equal(t, "BucketResource", plan.resourceNames["sample:index:Bucket"])
}

func TestSourcePlanSortsResourceTokens(t *testing.T) {
	t.Parallel()

	plan := newSourcePlan(&packageSchema{Resources: map[string]packageResourceSpec{
		"sample:index:Zebra": {},
		"sample:index:Alpha": {},
	}}, "pulumi_sample", "pulumi_sample_sdk")
	plan.reserveResourcePaths()

	require.Equal(t, []string{"sample:index:Alpha", "sample:index:Zebra"}, plan.resourceTokens)
}
