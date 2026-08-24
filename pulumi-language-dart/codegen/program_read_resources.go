package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) readResource(resource *pcl.ReadResource) (dartProgramResource, error) {
	token, _ := resource.GetToken()
	pkg, module, member, diagnostics := pcl.DecomposeToken(token, resource.SyntaxNode().Range())
	if diagnostics.HasErrors() {
		return dartProgramResource{}, fmt.Errorf("invalid resource token %q", token)
	}
	className := sanitizeTypeName(toDartClassName(member))
	stateClass := sanitizeTypeName(toDartClassName(member) + "State")
	if resource.Schema != nil && resource.Schema.PackageReference != nil {
		pkg = dartPackageNameForReference(pkg, resource.Schema.PackageReference)
		var argsClass string
		module, className, argsClass = programProviderResourceName(resource.Schema)
		stateClass = strings.TrimSuffix(argsClass, "Args") + "State"
		if module == "" {
			module = "index"
		}
	}
	var id string
	var inputs []dartProgramResourceInput
	for _, input := range resource.Inputs {
		value, err := lowerer.readResourceInputExpression(resource, pkg, input.Name, input.Value)
		if err != nil {
			return dartProgramResource{}, fmt.Errorf("input %q: %w", input.Name, err)
		}
		if input.Name == "id" {
			id = value
			continue
		}
		inputs = append(inputs, dartProgramResourceInput{
			Name: propertyFieldName(input.Name, map[string]int{}), Expression: value,
		})
	}
	if id == "" {
		return dartProgramResource{}, fmt.Errorf("missing id")
	}
	options, err := lowerer.resourceOptions(resource.Options)
	if err != nil {
		return dartProgramResource{}, err
	}
	return dartProgramResource{
		Name: lowerer.names[resource.Name()], LogicalName: resource.LogicalName(), Type: "read",
		ID: id, Package: pkg, Module: module, Class: className,
		StateClass: stateClass, Inputs: inputs,
		OptionsClass: "CustomResourceOptions", Options: options,
	}, nil
}

func (lowerer programLowerer) readResourceInputExpression(
	resource *pcl.ReadResource, pkg, name string, expression model.Expression,
) (string, error) {
	if property := readResourceProperty(resource.Schema, name); property != nil {
		return lowerer.typedProviderExpression(pkg, expression, property.Type)
	}
	return lowerer.expression(expression)
}

func readResourceProperty(resource *schema.Resource, name string) *schema.Property {
	if resource == nil || resource.StateInputs == nil {
		return nil
	}
	for _, property := range schemaObjectPropertiesFromRef(resource.StateInputs) {
		if property.Name == name {
			return property
		}
	}
	return nil
}
