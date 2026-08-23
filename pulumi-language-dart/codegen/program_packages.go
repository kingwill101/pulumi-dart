package codegen

import (
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func dartPackageNameForReference(fallback string, ref schema.PackageReference) string {
	if ref == nil {
		if fallback == "pulumi" || strings.HasPrefix(fallback, "pulumi_") {
			return fallback
		}
		return toDartPackageName("", fallback)
	}
	return toDartPackageName(ref.Namespace(), ref.Name())
}
