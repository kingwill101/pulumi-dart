package codegen

import (
	"fmt"
	"strings"

	"github.com/hashicorp/hcl/v2/hclsyntax"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/zclconf/go-cty/cty"
)

func lowerDartProgram(program *pcl.Program) (dartProgram, error) {
	lowerer := programLowerer{names: map[string]string{}, usedNames: map[string]int{}}
	result := dartProgram{}
	for _, node := range program.Nodes {
		switch node := node.(type) {
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
		var value strings.Builder
		for _, part := range expression.Parts {
			literal, ok := part.(*model.LiteralValueExpression)
			if !ok || literal.Value.Type() != cty.String {
				return "", fmt.Errorf("unsupported template part %T", part)
			}
			value.WriteString(literal.Value.AsString())
		}
		return dartStringLiteral(value.String()), nil
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
		if expression.Operation != hclsyntax.OpNegate {
			return "", fmt.Errorf("unsupported unary operation")
		}
		operand, err := lowerer.expression(expression.Operand)
		if err != nil {
			return "", err
		}
		return "-" + operand, nil
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
