package main

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/pulumi/pulumi/sdk/v3/go/common/encoding"
	"github.com/pulumi/pulumi/sdk/v3/go/common/tokens"
	"github.com/pulumi/pulumi/sdk/v3/go/common/workspace"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gopkg.in/yaml.v3"
)

func (host *dartLanguageHost) GenerateProgram(
	ctx context.Context, req *pulumirpc.GenerateProgramRequest,
) (*pulumirpc.GenerateProgramResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	source := map[string][]byte{
		"main.dart": codegen.GeneratedProgramStub(req.GetSource()),
	}

	return &pulumirpc.GenerateProgramResponse{
		Source: source,
	}, nil
}

func (host *dartLanguageHost) GenerateProject(
	ctx context.Context, req *pulumirpc.GenerateProjectRequest,
) (*pulumirpc.GenerateProjectResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	if strings.TrimSpace(req.GetTargetDirectory()) == "" {
		return nil, status.Error(codes.InvalidArgument, "target directory is required")
	}
	if err := os.MkdirAll(req.GetTargetDirectory(), 0o700); err != nil {
		return nil, fmt.Errorf("failed to create target directory: %w", err)
	}

	projectName := codegen.SanitizeDartIdentifier(filepath.Base(req.GetTargetDirectory()))
	project := workspace.Project{
		Name: tokens.PackageName(projectName),
	}

	if rawProject := strings.TrimSpace(req.GetProject()); rawProject != "" {
		if err := json.Unmarshal([]byte(rawProject), &project); err != nil {
			return nil, fmt.Errorf("failed to unmarshal Pulumi project JSON: %w", err)
		}
	}

	if name := strings.TrimSpace(project.Name.String()); name != "" {
		projectName = codegen.SanitizeDartIdentifier(name)
	} else {
		project.Name = tokens.PackageName(projectName)
	}

	// Keep runtime parity with upstream language hosts: the generated Pulumi
	// project should always target this language host, regardless of the source
	// project/runtime used by `pulumi convert`.
	project.Runtime = workspace.NewProjectRuntimeInfo("dart", nil)

	projectYAML, err := encoding.YAML.Marshal(project)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal Pulumi project YAML: %w", err)
	}
	if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "Pulumi.yaml"), projectYAML, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write Pulumi.yaml: %w", err)
	}

	pubspec := codegen.BuildGeneratedPubspec(projectName, req.GetLocalDependencies(), nil)
	pubspecBytes, err := yaml.Marshal(pubspec)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal generated pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(filepath.Join(req.GetTargetDirectory(), "pubspec.yaml"), pubspecBytes, 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated pubspec.yaml: %w", err)
	}

	binDir := filepath.Join(req.GetTargetDirectory(), "bin")
	if err := os.MkdirAll(binDir, 0o700); err != nil {
		return nil, fmt.Errorf("failed to create generated bin directory: %w", err)
	}
	programFile := filepath.Join(binDir, projectName+".dart")
	if err := os.WriteFile(programFile, codegen.GeneratedProgramStub(nil), 0o600); err != nil {
		return nil, fmt.Errorf("failed to write generated program file: %w", err)
	}

	return &pulumirpc.GenerateProjectResponse{}, nil
}
