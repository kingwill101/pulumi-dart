package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestDartLocalDependenciesUseGeneratedPackageNames(t *testing.T) {
	t.Parallel()

	assert.Equal(t, map[string]string{
		"pulumi":        "/core",
		"pulumi_simple": "/simple",
		"pulumi_my_pkg": "/my-pkg",
	}, dartLocalDependencies(map[string]string{
		"pulumi": "/core", "simple": "/simple", "my-pkg": "/my-pkg",
	}))
}

func TestDartPackageLocalDependenciesOnlyKeepsSchemaRequirements(t *testing.T) {
	t.Parallel()

	assert.Equal(t, map[string]string{
		"pulumi":        "/core",
		"pulumi_simple": "/simple",
	}, dartPackageLocalDependencies(map[string]string{
		"pulumi": "/core", "simple": "/simple", "unused": "/unused",
	}, map[string]interface{}{
		"pulumi_simple": "^1.0.0",
	}))
}
