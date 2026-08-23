package codegen

import (
	"fmt"
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func lowerComponents(program *pcl.Program) ([]dartProgramComponent, error) {
	components := program.CollectComponents()
	directories := make([]string, 0, len(components))
	for directory := range components {
		directories = append(directories, directory)
	}
	sort.Strings(directories)
	result := make([]dartProgramComponent, 0, len(directories))
	for _, directory := range directories {
		component := components[directory]
		lowerer := newProgramLowerer(component.Program)
		lowerer.componentMode = true
		body, err := lowerer.lowerProgram(component.Program)
		if err != nil {
			return nil, fmt.Errorf("component %s: %w", component.DeclarationName(), err)
		}
		args := make([]dartProgramComponentArg, 0, len(component.Program.ConfigVariables()))
		for _, variable := range component.Program.ConfigVariables() {
			args = append(args, dartProgramComponentArg{
				Name:     propertyFieldName(variable.Name(), map[string]int{}),
				WireName: variable.Name(),
				DartType: dartComponentInputType(variable.Type()),
				Required: variable.DefaultValue == nil,
			})
		}
		result = append(result, dartProgramComponent{Name: component.DeclarationName(), Args: args, Program: body})
	}
	return result, nil
}

func (lowerer programLowerer) componentInstance(
	component *pcl.Component,
) (dartProgramComponentInstance, []dartProgramDeferredOutput, error) {
	rangeSpec, restoreRange, err := lowerer.componentRange(component)
	if err != nil {
		return dartProgramComponentInstance{}, nil, err
	}
	defer restoreRange()
	configTypes := map[string]model.Type{}
	for _, variable := range component.Program.ConfigVariables() {
		configTypes[variable.Name()] = variable.Type()
	}
	inputs := make([]dartProgramResourceInput, len(component.Inputs))
	declarations := []dartProgramDeferredOutput{}
	for index, input := range component.Inputs {
		value, deferred := pcl.ExtractDeferredOutputVariables(lowerer.program, component, input.Value)
		restores := make([]func(), 0, len(deferred))
		for _, output := range deferred {
			name := propertyFieldName(component.Name()+"_"+output.Name, lowerer.usedNames)
			old, existed := lowerer.names[output.Name]
			lowerer.names[output.Name] = name
			restores = append(restores, func() { restoreProgramName(lowerer.names, output.Name, old, existed) })
			resolved, resolveErr := lowerer.expression(output.Expr)
			if resolveErr != nil {
				return dartProgramComponentInstance{}, nil, fmt.Errorf("deferred output %q: %w", output.Name, resolveErr)
			}
			declarations = append(declarations, dartProgramDeferredOutput{
				Name: name, DartType: dartComponentInputType(output.Expr.Type()),
			})
			lowerer.deferredResolutions[output.SourceComponent.Name()] = append(
				lowerer.deferredResolutions[output.SourceComponent.Name()],
				dartProgramDeferredResolution{
					Name: name, DartType: dartComponentInputType(output.Expr.Type()), Expression: resolved,
				},
			)
		}
		expression, err := lowerer.expression(value)
		for _, restore := range restores {
			restore()
		}
		if err == nil {
			expression = componentInputConversion(input.Value.Type(), configTypes[input.Name], expression)
		}
		if err != nil {
			return dartProgramComponentInstance{}, nil, fmt.Errorf("input %q: %w", input.Name, err)
		}
		inputs[index] = dartProgramResourceInput{
			Name: propertyFieldName(input.Name, map[string]int{}), Expression: expression,
		}
	}
	options, err := lowerer.resourceOptions(component.Options)
	if err != nil {
		return dartProgramComponentInstance{}, nil, err
	}
	if lowerer.componentMode && !hasProgramOption(options, "parent") {
		options = append(options, dartProgramResourceOption{Name: "parent", Expression: "this"})
	}
	return dartProgramComponentInstance{
		Name: lowerer.names[component.Name()], LogicalName: component.LogicalName(),
		Class: component.DeclarationName(), Inputs: inputs, Options: options,
		PrefixLogicalName: lowerer.componentMode,
		Range:             rangeSpec,
	}, declarations, nil
}
