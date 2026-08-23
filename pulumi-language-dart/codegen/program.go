package codegen

import (
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

// DartProgramArtifact is generated Dart source and the provider packages that
// source actually imports.
type DartProgramArtifact struct {
	Source   []byte
	Packages []string
}

// GenerateDartProgram lowers a bound PCL program into an executable Dart stack.
func GenerateDartProgram(program *pcl.Program) ([]byte, error) {
	artifact, err := GenerateDartProgramArtifact(program)
	return artifact.Source, err
}

// GenerateDartProgramArtifact lowers a bound PCL program and reports the
// package dependencies discovered during lowering.
func GenerateDartProgramArtifact(program *pcl.Program) (DartProgramArtifact, error) {
	lowered, err := lowerDartProgram(program)
	if err != nil {
		return DartProgramArtifact{}, err
	}
	packages := map[string]struct{}{}
	for _, resource := range lowered.Resources {
		if resource.Package != "" {
			packages[resource.Package] = struct{}{}
		}
	}
	for _, imported := range lowered.Imports {
		if imported.Package != "" {
			packages[imported.Package] = struct{}{}
		}
	}
	for _, component := range lowered.Components {
		for _, resource := range component.Program.Resources {
			if resource.Package != "" {
				packages[resource.Package] = struct{}{}
			}
		}
		for _, imported := range component.Program.Imports {
			if imported.Package != "" {
				packages[imported.Package] = struct{}{}
			}
		}
	}
	packageNames := make([]string, 0, len(packages))
	for name := range packages {
		packageNames = append(packageNames, name)
	}
	sort.Strings(packageNames)
	return DartProgramArtifact{Source: renderDartProgram(lowered), Packages: packageNames}, nil
}
