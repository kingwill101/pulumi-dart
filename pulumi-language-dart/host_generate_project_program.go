package main

import (
	"fmt"
	"strings"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource/plugin"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	codegenrpc "github.com/pulumi/pulumi/sdk/v3/proto/go/codegen"
)

type generatedProjectProgram struct {
	source      []byte
	packages    []string
	diagnostics []*codegenrpc.Diagnostic
	hasErrors   bool
}

func generateProjectProgram(req *pulumirpc.GenerateProjectRequest) (generatedProjectProgram, error) {
	if strings.TrimSpace(req.GetSourceDirectory()) == "" {
		return generatedProjectProgram{source: codegen.GeneratedProgramStub(nil)}, nil
	}

	loader, err := schema.NewLoaderClient(req.GetLoaderTarget())
	if err != nil {
		return generatedProjectProgram{}, fmt.Errorf("create schema loader: %w", err)
	}
	defer loader.Close()

	bindOptions := []pcl.BindOption{pcl.PreferOutputVersionedInvokes}
	if !req.GetStrict() {
		bindOptions = append(bindOptions, pcl.NonStrictBindOptions()...)
	}
	program, diagnostics, err := pcl.BindDirectory(
		req.GetSourceDirectory(),
		schema.NewCachedLoader(loader),
		bindOptions...,
	)
	if err != nil {
		return generatedProjectProgram{}, fmt.Errorf("bind PCL program: %w", err)
	}

	result := generatedProjectProgram{
		diagnostics: plugin.HclDiagnosticsToRPCDiagnostics(diagnostics),
		hasErrors:   diagnostics.HasErrors(),
	}
	if result.hasErrors {
		return result, nil
	}
	if program == nil {
		return generatedProjectProgram{}, fmt.Errorf("bind PCL program: program was nil")
	}
	artifact, err := codegen.GenerateDartProgramArtifact(program)
	if err != nil {
		return generatedProjectProgram{}, fmt.Errorf("generate Dart program: %w", err)
	}
	result.source = artifact.Source
	result.packages = artifact.Packages
	return result, nil
}
