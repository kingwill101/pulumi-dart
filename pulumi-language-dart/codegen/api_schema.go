package codegen

import (
	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/darttext"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

type PackageSchema = packageSchema
type RawPackageSchema = rawPackageSchema
type PackageTypeSpec = packageTypeSpec
type ExternalSchemaLoader func(providerName string) ([]byte, error)

func NormalizeDeprecatedProviderReferences(rawSchema string) string {
	return darttext.NormalizeDeprecatedProviderReferences(rawSchema)
}
func ParsePackageSchema(schemaJSON string, loadExternalSchema ExternalSchemaLoader) (*PackageSchema, error) {
	return parsePackageSchema(schemaJSON, loadExternalSchema)
}
func PackageSchemaFromPackage(pkg *schema.Package) *PackageSchema {
	return packageSchemaFromPackageWithDocs(pkg, true)
}
func RawRequiredSet(required []string) map[string]struct{} { return rawRequiredSet(required) }
func ExternalTokenTypeSpec(token, currentProvider, refKind, wireType string, useReferenceType, useReferenceTypes bool) (PackageTypeSpec, bool) {
	return externalTokenTypeSpec(token, currentProvider, refKind, wireType, useReferenceType, useReferenceTypes)
}
func CoerceOutputCollectionType(typeSpec PackageTypeSpec) PackageTypeSpec {
	return coerceOutputCollectionType(typeSpec)
}
