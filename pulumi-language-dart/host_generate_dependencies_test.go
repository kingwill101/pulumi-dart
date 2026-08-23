package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestDartProgramLocalDependenciesUseGeneratedPackageNames(t *testing.T) {
	t.Parallel()

	assert.Equal(t, map[string]string{
		"pulumi":        "/core",
		"pulumi_simple": "/simple",
		"pulumi_my_pkg": "/my-pkg",
	}, dartProgramLocalDependencies(map[string]string{
		"pulumi": "/core", "simple": "/simple", "my-pkg": "/my-pkg",
	}))
}
