package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) resource(resource *pcl.Resource) (dartProgramResource, error) {
	name := lowerer.names[resource.Name()]
	token, _ := resource.GetToken()
	if token != "pulumi:index:Stash" && token != "pulumi:Stash" && token != "pulumi:pulumi:StackReference" {
		return lowerer.providerResource(resource, name, token)
	}
	inputName := "input"
	resourceType := "stash"
	if token == "pulumi:pulumi:StackReference" {
		inputName = "name"
		resourceType = "stackReference"
	}
	if len(resource.Inputs) != 1 || resource.Inputs[0].Name != inputName {
		return dartProgramResource{}, fmt.Errorf("%s expects one %s property", token, inputName)
	}
	input, err := lowerer.expression(resource.Inputs[0].Value)
	if err != nil {
		return dartProgramResource{}, fmt.Errorf("input: %w", err)
	}
	return dartProgramResource{
		Name: name, LogicalName: resource.LogicalName(), Type: resourceType, Input: input,
	}, nil
}

func (lowerer programLowerer) providerResource(
	resource *pcl.Resource, name, token string,
) (dartProgramResource, error) {
	rangeSpec, restoreRange, err := lowerer.resourceRange(resource)
	if err != nil {
		return dartProgramResource{}, err
	}
	defer restoreRange()
	if rangeSpec != nil {
		lowerer.rangedResourceKinds[resource.Name()] = rangeSpec.Kind
	}
	pkg, module, member, diagnostics := pcl.DecomposeToken(token, resource.SyntaxNode().Range())
	if diagnostics.HasErrors() {
		return dartProgramResource{}, fmt.Errorf("invalid resource token %q", token)
	}
	className := sanitizeTypeName(toDartClassName(member))
	argsClass := sanitizeTypeName(toDartClassName(member) + "Args")
	if strings.HasPrefix(token, "pulumi:providers:") {
		pkg = strings.TrimPrefix(token, "pulumi:providers:")
		module = "providers"
		className = "ProviderProvider"
		argsClass = "ProviderArgs"
	} else if resource.Schema != nil && resource.Schema.PackageReference != nil {
		pkg = dartPackageNameForReference(pkg, resource.Schema.PackageReference)
		module, className, argsClass = programProviderResourceName(resource.Schema)
		if module == "" {
			module = "index"
		}
	}
	if !strings.HasPrefix(pkg, "pulumi_") && pkg != "pulumi" {
		pkg = toDartPackageName("", pkg)
	}
	inputs := make([]dartProgramResourceInput, len(resource.Inputs))
	for index, input := range resource.Inputs {
		expression, err := lowerer.providerInputExpression(resource, pkg, input.Name, input.Value)
		if err != nil {
			return dartProgramResource{}, fmt.Errorf("input %q: %w", input.Name, err)
		}
		inputs[index] = dartProgramResourceInput{
			Name: propertyFieldName(input.Name, map[string]int{}), Expression: expression,
		}
	}
	options, err := lowerer.resourceOptions(resource.Options)
	if err != nil {
		return dartProgramResource{}, err
	}
	if lowerer.componentMode && !hasProgramOption(options, "parent") {
		options = append(options, dartProgramResourceOption{Name: "parent", Expression: "this"})
	}
	optionsClass := "CustomResourceOptions"
	if resource.Schema != nil && resource.Schema.IsComponent {
		optionsClass = "ComponentResourceOptions"
	}
	return dartProgramResource{
		Name: name, LogicalName: resource.LogicalName(), Type: "provider",
		PrefixLogicalName: lowerer.componentMode,
		Package:           pkg, Module: module, Class: className,
		ArgsClass: argsClass, Inputs: inputs, OptionsClass: optionsClass, Options: options,
		Range: rangeSpec,
	}, nil
}
