package codegen

import (
	"fmt"
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func lowerDartProgram(program *pcl.Program) (dartProgram, error) {
	lowerer := newProgramLowerer(program)
	if len(program.ConfigVariables()) > 0 {
		lowerer.usedNames["config"] = 1
	}
	nodes := pcl.Linearize(program)
	lowerer.declareNodeNames(nodes)
	result := dartProgram{}
	for _, node := range nodes {
		switch node := node.(type) {
		case *pcl.ConfigVariable:
			config, err := lowerer.configVariable(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("config %q: %w", node.LogicalName(), err)
			}
			result.Configs = append(result.Configs, config)
			result.Statements = append(result.Statements, dartProgramStatement{Config: &config})
		case *pcl.PulumiBlock:
			if node.RequiredVersion != nil {
				requiredVersion, err := lowerer.expression(node.RequiredVersion)
				if err != nil {
					return dartProgram{}, fmt.Errorf("required Pulumi version: %w", err)
				}
				result.RequiredPulumiVersions = append(result.RequiredPulumiVersions, requiredVersion)
			}
		case *pcl.LocalVariable:
			name := lowerer.names[node.Name()]
			expression, err := lowerer.expression(node.Definition.Value)
			if err != nil {
				return dartProgram{}, fmt.Errorf("local %q: %w", node.Name(), err)
			}
			local := dartProgramLocal{Name: name, Expression: expression}
			result.Locals = append(result.Locals, local)
			result.Statements = append(result.Statements, dartProgramStatement{Local: &local})
			if invokeExpression(node.Definition.Value) != nil {
				lowerer.typedObjectNames[name] = true
			}
		case *pcl.Resource:
			resource, err := lowerer.resource(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("resource %q: %w", node.LogicalName(), err)
			}
			result.Resources = append(result.Resources, resource)
			result.Statements = append(result.Statements, dartProgramStatement{Resource: &resource})
		case *pcl.OutputVariable:
			expression, err := lowerer.expression(node.Value)
			if err != nil {
				return dartProgram{}, fmt.Errorf("output %q: %w", node.LogicalName(), err)
			}
			result.Outputs = append(result.Outputs, dartProgramOutput{
				Name:       node.LogicalName(),
				Expression: expression,
			})
		}
	}
	result.Imports = lowerer.sortedImports()
	return result, nil
}

type programLowerer struct {
	names            map[string]string
	usedNames        map[string]int
	typedObjectNames map[string]bool
	imports          map[string]dartProgramImport
	functions        map[string]programFunction
}

func newProgramLowerer(program *pcl.Program) programLowerer {
	return programLowerer{
		names: map[string]string{}, usedNames: map[string]int{},
		typedObjectNames: map[string]bool{}, imports: map[string]dartProgramImport{},
		functions: programFunctions(program.Packages()),
	}
}

func (lowerer programLowerer) sortedImports() []dartProgramImport {
	keys := make([]string, 0, len(lowerer.imports))
	for key := range lowerer.imports {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	imports := make([]dartProgramImport, len(keys))
	for index, key := range keys {
		imports[index] = lowerer.imports[key]
	}
	return imports
}
