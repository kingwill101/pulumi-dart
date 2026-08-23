package codegen

import (
	"fmt"
	"strings"

	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) hook(node *pcl.Hook) (dartProgramHook, error) {
	result := dartProgramHook{
		Name: lowerer.names[node.Name()], LogicalName: node.LogicalName(), Kind: string(node.Kind),
	}
	command, ok := node.Command.(*model.TupleConsExpression)
	if !ok {
		return dartProgramHook{}, fmt.Errorf("command must be a list, got %T", node.Command)
	}
	result.Command = make([]string, len(command.Expressions))
	for index, expression := range command.Expressions {
		value, err := lowerer.expression(expression)
		if err != nil {
			return dartProgramHook{}, fmt.Errorf("command argument %d: %w", index, err)
		}
		result.Command[index] = value
	}
	var err error
	if node.OnDryRun != nil {
		result.OnDryRun, err = lowerer.expression(node.OnDryRun)
		if err != nil {
			return dartProgramHook{}, fmt.Errorf("onDryRun: %w", err)
		}
	}
	if node.IgnoreErrors != nil {
		result.IgnoreErrors, err = lowerer.expression(node.IgnoreErrors)
		if err != nil {
			return dartProgramHook{}, fmt.Errorf("ignoreErrors: %w", err)
		}
	}
	return result, nil
}

func renderDartProgramHook(hook dartProgramHook) string {
	command := "<String>[" + strings.Join(hook.Command, ", ") + "]"
	if hook.Kind == string(pcl.HookKindError) {
		return fmt.Sprintf("    final %s = pulumi.ErrorHook(%s, (args) => pulumi.runErrorHookCommand(%s));\n",
			hook.Name, dartStringLiteral(hook.LogicalName), command)
	}
	options := ""
	if hook.OnDryRun != "" {
		options += ", onDryRun: " + hook.OnDryRun
	}
	if hook.IgnoreErrors != "" {
		options += ", ignoreErrors: " + hook.IgnoreErrors
	}
	return fmt.Sprintf("    final %s = pulumi.ResourceHook(%s, (args) => pulumi.runResourceHookCommand(%s)%s);\n",
		hook.Name, dartStringLiteral(hook.LogicalName), command, options)
}

func (lowerer programLowerer) hooksExpression(expression model.Expression) (string, error) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		return "", fmt.Errorf("hooks must be an object, got %T", expression)
	}
	fields := make([]string, len(object.Items))
	for index, item := range object.Items {
		name := pcl.LiteralValueString(item.Key)
		value, err := lowerer.expression(item.Value)
		if err != nil {
			return "", fmt.Errorf("hook binding %q: %w", name, err)
		}
		fields[index] = name + ": " + value
	}
	return "pulumi.ResourceHookBinding(" + strings.Join(fields, ", ") + ")", nil
}

func lowerHookArgsTraversal(traversal hcl.Traversal) (string, error) {
	first, ok := traversal[0].(hcl.TraverseAttr)
	if !ok {
		return "", fmt.Errorf("hook args require an attribute traversal")
	}
	result := "args." + first.Name
	for _, traverser := range traversal[1:] {
		switch traverser := traverser.(type) {
		case hcl.TraverseAttr:
			result = "pulumi.indexValue(" + result + ", " + dartStringLiteral(traverser.Name) + ")"
		case hcl.TraverseIndex:
			key, err := lowerDartLiteral(traverser.Key)
			if err != nil {
				return "", err
			}
			result = "pulumi.indexValue(" + result + ", " + key + ")"
		default:
			return "", fmt.Errorf("unsupported hook args traverser %T", traverser)
		}
	}
	return result, nil
}
