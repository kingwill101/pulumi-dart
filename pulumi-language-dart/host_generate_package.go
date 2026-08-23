package main

import (
	"context"
	"fmt"
	"path/filepath"
	"strings"

	"github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func (host *dartLanguageHost) GeneratePackage(
	ctx context.Context,
	req *pulumirpc.GeneratePackageRequest,
) (*pulumirpc.GeneratePackageResponse, error) {
	_ = ctx
	if err := validateGeneratePackageRequest(req); err != nil {
		return nil, err
	}

	normalizedSchema := codegen.NormalizeDeprecatedProviderReferences(req.GetSchema())
	schemaResult, err := bindGeneratedPackageSchema(req, normalizedSchema)
	if err != nil || schemaResult.response != nil {
		return schemaResult.response, err
	}
	applyRawConfigRequirements(schemaResult.spec, normalizedSchema)

	packageName := codegen.ToDartPackageName(schemaResult.spec.Namespace, schemaResult.spec.Name)
	pubspec, err := buildGeneratedPackagePubspec(req, schemaResult, packageName, normalizedSchema)
	if err != nil {
		return nil, err
	}
	generatedPaths := map[string]struct{}{}
	recordGenerated := func(path string) { generatedPaths[filepath.Clean(path)] = struct{}{} }
	if err := writeGeneratedPubspec(req.GetDirectory(), pubspec, recordGenerated); err != nil {
		return nil, err
	}
	if err := writeGeneratedSources(req.GetDirectory(), packageName, schemaResult.spec, recordGenerated); err != nil {
		return nil, err
	}
	if err := writeGeneratedExtraFiles(req, packageName, schemaResult.spec.Name, pubspec.Version, generatedPaths); err != nil {
		return nil, err
	}
	if err := syncGeneratedCodeToWorkspaceMember(req.GetDirectory(), packageName); err != nil {
		return nil, fmt.Errorf("failed to sync generated code to workspace member: %w", err)
	}
	return &pulumirpc.GeneratePackageResponse{Diagnostics: schemaResult.diagnostics}, nil
}

func validateGeneratePackageRequest(req *pulumirpc.GeneratePackageRequest) error {
	if req == nil {
		return status.Error(codes.InvalidArgument, "request is required")
	}
	if strings.TrimSpace(req.GetDirectory()) == "" {
		return status.Error(codes.InvalidArgument, "directory is required")
	}
	if strings.TrimSpace(req.GetSchema()) == "" {
		return status.Error(codes.InvalidArgument, "schema is required")
	}
	return nil
}
