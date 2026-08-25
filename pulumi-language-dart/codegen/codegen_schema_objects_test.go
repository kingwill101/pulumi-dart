package codegen

import (
	"testing"

	"github.com/stretchr/testify/require"
)

func TestObjectClassHasDefaultsRequiresEveryRequiredPropertyToBeDefaultable(t *testing.T) {
	t.Parallel()

	require.True(t, objectClassHasDefaults(packageObjectClassSpec{Properties: []packagePropertySpec{
		{Required: true, DefaultExpression: "'default'"},
		{DefaultExpression: "42"},
	}}))
	require.False(t, objectClassHasDefaults(packageObjectClassSpec{Properties: []packagePropertySpec{
		{Required: true},
		{DefaultExpression: "42"},
	}}))
	require.False(t, objectClassHasDefaults(packageObjectClassSpec{Properties: []packagePropertySpec{
		{Required: false},
	}}))
}
