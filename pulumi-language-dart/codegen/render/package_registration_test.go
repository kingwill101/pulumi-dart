package render

import (
	"testing"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/dartir"
	"github.com/stretchr/testify/require"
)

func TestPackageRegistration(t *testing.T) {
	t.Parallel()

	actual := string(PackageRegistration(dartir.PackageRegistration{
		PluginName:     "terraform-provider",
		PluginVersion:  "1.2.3",
		DownloadURL:    "https://example.test/provider",
		PackageName:    "parameterized",
		PackageVersion: "4.5.6",
		Value:          []byte{0, 127, 255},
	}))

	require.Contains(t, actual, `name: "terraform-provider"`)
	require.Contains(t, actual, `downloadUrl: "https://example.test/provider"`)
	require.Contains(t, actual, "value: <int>[0, 127, 255]")
}

func TestPackageRegistrationUsesConstEmptyValue(t *testing.T) {
	t.Parallel()

	actual := string(PackageRegistration(dartir.PackageRegistration{}))

	require.Contains(t, actual, "value: const <int>[]")
}
