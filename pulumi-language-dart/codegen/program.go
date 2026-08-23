package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/pcl"

// GenerateDartProgram lowers a bound PCL program into an executable Dart stack.
func GenerateDartProgram(program *pcl.Program) ([]byte, error) {
	lowered, err := lowerDartProgram(program)
	if err != nil {
		return nil, err
	}
	return renderDartProgram(lowered), nil
}
