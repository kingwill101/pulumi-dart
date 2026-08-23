package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) resource(resource *pcl.Resource) (dartProgramResource, error) {
	name := propertyFieldName(resource.Name(), lowerer.usedNames)
	lowerer.names[resource.Name()] = name
	token, _ := resource.GetToken()
	if token != "pulumi:index:Stash" && token != "pulumi:Stash" && token != "pulumi:pulumi:StackReference" {
		return dartProgramResource{}, fmt.Errorf("unsupported resource token %q", token)
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
