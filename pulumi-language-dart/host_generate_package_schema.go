package main

import (
	"encoding/json"
	"io"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource/plugin"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	codegenrpc "github.com/pulumi/pulumi/sdk/v3/proto/go/codegen"
)

type generatedPackageSchemaResult struct {
	spec        *codegen.PackageSchema
	packageSpec schema.PackageSpec
	diagnostics []*codegenrpc.Diagnostic
	response    *pulumirpc.GeneratePackageResponse
}

func bindGeneratedPackageSchema(
	req *pulumirpc.GeneratePackageRequest,
	rawSchema string,
) (generatedPackageSchemaResult, error) {
	result := generatedPackageSchemaResult{}
	loadExternal := filesystemExternalSchemaLoader(req.GetDirectory())
	if err := json.Unmarshal([]byte(rawSchema), &result.packageSpec); err != nil {
		return parseGeneratedPackageSchema(result, rawSchema, loadExternal)
	}

	loader, closer, err := generatedPackageSchemaLoader(req.GetLoaderTarget())
	if err != nil {
		return result, err
	}
	if closer != nil {
		defer closer.Close()
	}
	if loader == nil && schemaContainsExternalReferences(rawSchema) {
		return parseGeneratedPackageSchema(result, rawSchema, loadExternal)
	}
	bindLoader := loader
	if bindLoader == nil {
		bindLoader = schema.NewNullLoader()
	}
	pkg, diagnostics, bindErr := schema.BindSpec(result.packageSpec, bindLoader, schema.ValidationOptions{
		AllowDanglingReferences: true,
	})
	if bindErr != nil {
		if loader == nil {
			return parseGeneratedPackageSchema(result, rawSchema, loadExternal)
		}
		return result, bindErr
	}

	result.diagnostics = plugin.HclDiagnosticsToRPCDiagnostics(diagnostics)
	if loader == nil && (diagnostics.HasErrors() || schemaContainsExternalReferences(rawSchema)) {
		return parseGeneratedPackageSchema(result, rawSchema, loadExternal)
	}
	if diagnostics.HasErrors() {
		result.response = &pulumirpc.GeneratePackageResponse{Diagnostics: result.diagnostics}
		return result, nil
	}
	result.spec = codegen.PackageSchemaFromPackage(pkg)
	return result, nil
}

func generatedPackageSchemaLoader(target string) (schema.Loader, io.Closer, error) {
	if strings.TrimSpace(target) == "" {
		return nil, nil, nil
	}
	loader, err := schema.NewLoaderClient(strings.TrimSpace(target))
	if err != nil {
		return nil, nil, err
	}
	return loader, loader, nil
}

func parseGeneratedPackageSchema(
	result generatedPackageSchemaResult,
	rawSchema string,
	loadExternal codegen.ExternalSchemaLoader,
) (generatedPackageSchemaResult, error) {
	spec, err := codegen.ParsePackageSchema(rawSchema, loadExternal)
	if err != nil {
		return result, err
	}
	result.spec = spec
	result.diagnostics = nil
	return result, nil
}

func applyRawConfigRequirements(spec *codegen.PackageSchema, rawSchema string) {
	if spec.Config == nil {
		return
	}
	var rawSpec codegen.RawPackageSchema
	if err := json.Unmarshal([]byte(rawSchema), &rawSpec); err != nil {
		return
	}
	required := codegen.RawRequiredSet(rawSpec.Config.Required)
	for index := range spec.Config.Properties {
		if _, ok := required[spec.Config.Properties[index].Name]; ok {
			spec.Config.Properties[index].Required = true
		}
	}
}
