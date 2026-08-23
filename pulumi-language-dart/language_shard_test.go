package main

import (
	"testing"
	"time"

	"github.com/stretchr/testify/require"
)

func TestConformanceShardFromEnvironment(t *testing.T) {
	t.Setenv("PULUMI_DART_CONFORMANCE_SHARD", "3/8")
	shard, err := conformanceShardFromEnvironment()
	require.NoError(t, err)
	require.Equal(t, conformanceShard{index: 2, total: 8}, shard)
}

func TestConformanceShardRejectsInvalidValues(t *testing.T) {
	for _, value := range []string{"0/8", "9/8", "1/0", "abc", "1/2/3"} {
		t.Run(value, func(t *testing.T) {
			t.Setenv("PULUMI_DART_CONFORMANCE_SHARD", value)
			_, err := conformanceShardFromEnvironment()
			require.Error(t, err)
		})
	}
}

func TestConformanceShardAssignmentIsStableAndExclusive(t *testing.T) {
	const total = 8
	for _, name := range []string{"l1-empty", "l2-enum", "l3-deferred-outputs"} {
		selected := 0
		for index := range total {
			if (conformanceShard{index: index, total: total}).includes(name) {
				selected++
			}
		}
		require.Equal(t, 1, selected, name)
	}
}

func TestConformanceCaseTimeout(t *testing.T) {
	t.Setenv("PULUMI_DART_CONFORMANCE_CASE_TIMEOUT", "90s")
	require.Equal(t, 90*time.Second, conformanceCaseTimeout())
}
