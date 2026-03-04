// Copyright 2016-2021, Pulumi Corporation.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package codegen

import "testing"

func TestStripRedundantModulePrefix(t *testing.T) {
	t.Parallel()

	cases := []struct {
		name       string
		base       string
		modulePath string
		expected   string
	}{
		{
			name:       "strip nested module prefix",
			base:       "AccessPointPublicAccessBlockConfiguration",
			modulePath: "s3/accesspoint",
			expected:   "PublicAccessBlockConfiguration",
		},
		{
			name:       "do not strip from single module segment",
			base:       "S3Bucket",
			modulePath: "s3",
			expected:   "S3Bucket",
		},
		{
			name:       "no strip when prefix does not match",
			base:       "Bucket",
			modulePath: "s3/accesspoint",
			expected:   "Bucket",
		},
		{
			name:       "strip second segment prefix in nested module path",
			base:       "CloudfrontCustomOrigin",
			modulePath: "cdn/cloudfront",
			expected:   "CustomOrigin",
		},
		{
			name:       "do not strip when remaining tail is invalid",
			base:       "S3BucketPolicy",
			modulePath: "s3/policy",
			expected:   "S3BucketPolicy",
		},
		{
			name:       "trim whitespace around input",
			base:       " AccessPointRule",
			modulePath: "s3/accesspoint",
			expected:   "Rule",
		},
	}

	for _, c := range cases {
		c := c
		t.Run(c.name, func(t *testing.T) {
			t.Parallel()
			if got := stripRedundantModulePrefix(c.base, c.modulePath); got != c.expected {
				t.Fatalf("unexpected name: got %q, want %q", got, c.expected)
			}
		})
	}
}

func TestTypeNameCandidatesStripsRedundantPrefix(t *testing.T) {
	t.Parallel()

	cases := []struct {
		name       string
		base       string
		modulePath string
		expected   string
	}{
		{
			name:       "qualify stripped base with suffixes",
			base:       "AccessPointPublicAccessBlockConfiguration",
			modulePath: "s3/accesspoint",
			expected:   "PublicAccessBlockConfigurationArgs",
		},
		{
			name:       "preserve base for single segment module",
			base:       "Bucket",
			modulePath: "s3",
			expected:   "BucketArgs",
		},
	}

	for _, c := range cases {
		c := c
		t.Run(c.name, func(t *testing.T) {
			t.Parallel()
			got := typeNameCandidates(c.base, c.modulePath, "Args")[0]
			if got != c.expected {
				t.Fatalf("unexpected type candidate: got %q, want %q", got, c.expected)
			}
		})
	}
}
