package codegen

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestBuildGeneratedPubspecUsesExplicitPulumiDependency(t *testing.T) {
	pulumiDependency := map[string]string{"path": "../pulumi"}
	pubspec := buildGeneratedPubspec("pulumi_sample", nil, nil, pulumiDependency)

	assert.Equal(t, pulumiDependency, pubspec.Dependencies["pulumi"])
}

func TestBuildGeneratedPubspecPrefersLocalPulumiDependency(t *testing.T) {
	pubspec := buildGeneratedPubspec(
		"pulumi_sample",
		map[string]string{"pulumi": "../local-pulumi"},
		nil,
		"^1.0.0",
	)

	assert.Equal(t, map[string]string{"path": "../local-pulumi"}, pubspec.Dependencies["pulumi"])
}

func TestGeneratedSDKPackageVersionUsesExplicitInputs(t *testing.T) {
	tests := []struct {
		name            string
		upstreamVersion string
		override        string
		suffix          string
		expectedVersion string
	}{
		{name: "upstream", upstreamVersion: "v1.2.3", expectedVersion: "1.2.3"},
		{name: "override", upstreamVersion: "1.2.3", override: "v2.0.0", expectedVersion: "2.0.0"},
		{name: "suffix", upstreamVersion: "1.2.3", suffix: "dev.1", expectedVersion: "1.2.3-dev.1"},
		{name: "build suffix", upstreamVersion: "1.2.3", suffix: "+local", expectedVersion: "1.2.3+local"},
		{name: "fallback", expectedVersion: "0.0.1"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			assert.Equal(t, test.expectedVersion, generatedSDKPackageVersion(
				test.upstreamVersion,
				test.override,
				test.suffix,
			))
		})
	}
}

func TestGeneratedPackageReadmeUsesExplicitRepository(t *testing.T) {
	readme := string(generatedPackageReadme(
		&schemair.Package{Name: "sample", Repository: "https://example.com/provider"},
		"pulumi_sample",
		"sample",
		"https://example.com/sdk.git",
		"release/v1",
	))

	require.Contains(t, readme, "url: https://example.com/sdk.git")
	require.Contains(t, readme, "path: packages/sdks/sample")
	require.Contains(t, readme, "ref: release/v1")
	require.Contains(t, readme, "https://example.com/provider")
}
