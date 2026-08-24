package codegen

import (
	_ "embed"
	"strings"
)

// apache20License is the canonical SPDX License List text from
// https://github.com/spdx/license-list-data/blob/5bf6d9610255540bfbee6890765a616042bf1e11/text/Apache-2.0.txt.
//
//go:embed assets/apache-2.0.txt
var apache20License []byte

func generatedPackageLicense(spdxID string) []byte {
	switch strings.TrimSpace(spdxID) {
	case "Apache-2.0":
		return append([]byte(nil), apache20License...)
	default:
		return nil
	}
}
