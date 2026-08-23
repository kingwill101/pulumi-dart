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
				DartType: dartComponentInputType(variable.Type()),
				Required: variable.DefaultValue == nil,
			})
		}
		result = append(result, dartProgramComponent{Name: component.DeclarationName(), Args: args, Program: body})
	}
	return result, nil
}

func (lowerer programLowerer) componentInstance(component *pcl.Component) (dartProgramComponentInstance, error) {
	configTypes := map[string]model.Type{}
	for _, variable := range component.Program.ConfigVariables() {
		configTypes[variable.Name()] = variable.Type()
	}
	inputs := make([]dartProgramResourceInput, len(component.Inputs))
	for index, input := range component.Inputs {
		expression, err := lowerer.expression(input.Value)
		if err == nil {
			expression = componentInputConversion(input.Value.Type(), configTypes[input.Name], expression)
		}
		if err != nil {
			return dartProgramComponentInstance{}, fmt.Errorf("input %q: %w", input.Name, err)
		}
		inputs[index] = dartProgramResourceInput{
			Name: propertyFieldName(input.Name, map[string]int{}), Expression: expression,
		}
	}
	options, err := lowerer.resourceOptions(component.Options)
	if err != nil {
		return dartProgramComponentInstance{}, err
	}
	if lowerer.componentMode && !hasProgramOption(options, "parent") {
		options = append(options, dartProgramResourceOption{Name: "parent", Expression: "this"})
	}
	return dartProgramComponentInstance{
		Name: lowerer.names[component.Name()], LogicalName: component.LogicalName(),
		Class: component.DeclarationName(), Inputs: inputs, Options: options,
		PrefixLogicalName: lowerer.componentMode,
	}, nil
}

func dartComponentInputType(typ model.Type) string {
	typ = model.ResolveOutputs(typ)
	switch typ {
	case model.BoolType:
		return "bool"
	case model.IntType:
		return "int"
	case model.NumberType:
		return "double"
	case model.StringType:
		return "String"
	}
	switch value := typ.(type) {
	case *model.ListType:
		return "List<" + dartComponentInputType(value.ElementType) + ">"
	case *model.SetType:
		return "Set<" + dartComponentInputType(value.ElementType) + ">"
	case *model.MapType:
		return "Map<String, " + dartComponentInputType(value.ElementType) + ">"
	default:
		return "dynamic"
	}
}

func hasProgramOption(options []dartProgramResourceOption, name string) bool {
	for _, option := range options {
		if option.Name == name {
			return true
		}
	}
	return false
}
