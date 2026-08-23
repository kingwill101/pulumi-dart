package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func lowerDartProgram(program *pcl.Program) (dartProgram, error) {
	lowerer := newProgramLowerer(program)
	result, err := lowerer.lowerProgram(program)
	if err != nil {
		return dartProgram{}, err
	}
	result.Components, err = lowerComponents(program)
	return result, err
}

func (lowerer programLowerer) lowerProgram(program *pcl.Program) (dartProgram, error) {
	if len(program.ConfigVariables()) > 0 {
		lowerer.usedNames["config"] = 1
	}
	nodes := pcl.Linearize(program)
	lowerer.declareNodeNames(nodes)
	result := dartProgram{}
	if lowerer.componentMode {
		for _, variable := range program.ConfigVariables() {
			lowerer.names[variable.Name()] = "args." + propertyFieldName(variable.Name(), map[string]int{})
		}
	}
	for _, node := range nodes {
		switch node := node.(type) {
		case *pcl.ConfigVariable:
			if lowerer.componentMode {
				continue
			}
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
				result.Statements = append(result.Statements, dartProgramStatement{
					RequiredPulumiVersion: requiredVersion,
				})
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
		case *pcl.Hook:
			hook, err := lowerer.hook(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("hook %q: %w", node.LogicalName(), err)
			}
			result.Statements = append(result.Statements, dartProgramStatement{Hook: &hook})
		case *pcl.Resource:
			resource, err := lowerer.resource(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("resource %q: %w", node.LogicalName(), err)
			}
			result.Resources = append(result.Resources, resource)
			result.Statements = append(result.Statements, dartProgramStatement{Resource: &resource})
		case *pcl.ReadResource:
			resource, err := lowerer.readResource(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("read resource %q: %w", node.LogicalName(), err)
			}
			result.Resources = append(result.Resources, resource)
			result.Statements = append(result.Statements, dartProgramStatement{Resource: &resource})
		case *pcl.Component:
			component, err := lowerer.componentInstance(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("component %q: %w", node.LogicalName(), err)
			}
			result.Statements = append(result.Statements, dartProgramStatement{Component: &component})
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
	result.NeedsAsyncInitialization = *lowerer.needsAsyncInitialization
	result.ResourceReferences = lowerer.sortedResourceReferences()
	_, result.RequiresPulumiProvider = lowerer.specialProviders["pulumi"]
	return result, nil
}
