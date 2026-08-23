package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func lowerDartProgram(program *pcl.Program) (dartProgram, error) {
	lowerer := programLowerer{names: map[string]string{}, usedNames: map[string]int{}}
	if len(program.ConfigVariables()) > 0 {
		lowerer.usedNames["config"] = 1
	}
	result := dartProgram{}
	for _, node := range program.Nodes {
		switch node := node.(type) {
		case *pcl.ConfigVariable:
			config, err := lowerer.configVariable(node)
			if err != nil {
				return dartProgram{}, fmt.Errorf("config %q: %w", node.LogicalName(), err)
			}
			result.Configs = append(result.Configs, config)
		case *pcl.LocalVariable:
			name := propertyFieldName(node.Name(), lowerer.usedNames)
			lowerer.names[node.Name()] = name
			expression, err := lowerer.expression(node.Definition.Value)
			if err != nil {
				return dartProgram{}, fmt.Errorf("local %q: %w", node.Name(), err)
			}
			result.Locals = append(result.Locals, dartProgramLocal{Name: name, Expression: expression})
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
	return result, nil
}

func lowerDartProgramExpression(expression model.Expression) (string, error) {
	return (programLowerer{names: map[string]string{}, usedNames: map[string]int{}}).expression(expression)
}

type programLowerer struct {
	names     map[string]string
	usedNames map[string]int
}

func (lowerer programLowerer) expression(expression model.Expression) (string, error) {
	switch expression := expression.(type) {
	case *model.LiteralValueExpression:
		return lowerDartLiteral(expression.Value)
	case *model.TemplateExpression:
		return lowerer.templateExpression(expression)
	case *model.TupleConsExpression:
		items := make([]string, len(expression.Expressions))
		for index, item := range expression.Expressions {
			lowered, err := lowerer.expression(item)
			if err != nil {
				return "", err
			}
			items[index] = lowered
		}
		return "[" + strings.Join(items, ", ") + "]", nil
	case *model.ObjectConsExpression:
		items := make([]string, len(expression.Items))
		for index, item := range expression.Items {
			key, err := lowerer.expression(item.Key)
			if err != nil {
				return "", fmt.Errorf("object key: %w", err)
			}
			value, err := lowerer.expression(item.Value)
			if err != nil {
				return "", fmt.Errorf("object value: %w", err)
			}
			items[index] = key + ": " + value
		}
		return "{" + strings.Join(items, ", ") + "}", nil
	case *model.UnaryOpExpression:
		return lowerer.unaryExpression(expression)
	case *model.BinaryOpExpression:
		return lowerer.binaryExpression(expression)
	case *model.ScopeTraversalExpression:
		if len(expression.Traversal) != 1 {
			return "", fmt.Errorf("unsupported traversal %v", expression.Traversal)
		}
		name, ok := lowerer.names[expression.RootName]
		if !ok {
			return "", fmt.Errorf("unknown variable %q", expression.RootName)
		}
		return name, nil
	default:
		return "", fmt.Errorf("unsupported expression %T", expression)
	}
}
