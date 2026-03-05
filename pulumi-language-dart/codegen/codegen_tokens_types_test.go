package codegen

import "testing"

func TestToDartPackageName(t *testing.T) {
	t.Parallel()

	cases := []struct {
		name      string
		namespace string
		provider  string
		expected  string
	}{
		{
			name:      "standard provider keeps pulumi prefix",
			namespace: "",
			provider:  "aws",
			expected:  "pulumi_aws",
		},
		{
			name:      "pulumi provider maps to pulumi core package",
			namespace: "",
			provider:  "pulumi",
			expected:  "pulumi",
		},
		{
			name:      "namespaced package keeps provider package shape",
			namespace: "pulumi",
			provider:  "pulumiservice",
			expected:  "pulumi_pulumiservice",
		},
	}

	for _, c := range cases {
		c := c
		t.Run(c.name, func(t *testing.T) {
			t.Parallel()
			if got := toDartPackageName(c.namespace, c.provider); got != c.expected {
				t.Fatalf("toDartPackageName(%q, %q) = %q, want %q", c.namespace, c.provider, got, c.expected)
			}
		})
	}
}
