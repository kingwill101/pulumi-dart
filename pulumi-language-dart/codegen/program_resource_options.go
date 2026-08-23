package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

type resourceOptionExpression struct {
	name               string
	expression         model.Expression
	input              bool
	propertyReferences bool
	customTimeouts     bool
	unwrapConversion   bool
	aliases            bool
	hooks              bool
	providers          bool
}

func (lowerer programLowerer) resourceOptions(
	options *pcl.ResourceOptions,
) ([]dartProgramResourceOption, error) {
	if options == nil {
		return nil, nil
	}
	candidates := []resourceOptionExpression{
		{name: "parent", expression: options.Parent},
		{name: "aliases", expression: options.Aliases, aliases: true},
		{name: "hooks", expression: options.Hooks, hooks: true},
		{name: "provider", expression: options.Provider},
		{name: "providers", expression: options.Providers, providers: true},
		{name: "dependsOn", expression: options.DependsOn},
		{name: "protect", expression: options.Protect},
		{name: "retainOnDelete", expression: options.RetainOnDelete},
		{name: "deleteBeforeReplace", expression: options.DeleteBeforeReplace},
		{name: "ignoreChanges", expression: options.IgnoreChanges, propertyReferences: true},
		{name: "hideDiffs", expression: options.HideDiffs, propertyReferences: true},
		{name: "replaceOnChanges", expression: options.ReplaceOnChanges, propertyReferences: true},
		{name: "additionalSecretOutputs", expression: options.AdditionalSecretOutputs, propertyReferences: true},
		{name: "customTimeouts", expression: options.CustomTimeouts, customTimeouts: true},
		{name: "version", expression: options.Version},
		{name: "pluginDownloadURL", expression: options.PluginDownloadURL},
		{name: "deletedWith", expression: options.DeletedWith},
		{name: "importId", expression: options.ImportID, input: true},
		{name: "replacementTrigger", expression: options.ReplacementTrigger, unwrapConversion: true},
		{name: "replaceWith", expression: options.ReplaceWith},
		{name: "envVarMappings", expression: options.EnvVarMappings},
	}
	result := make([]dartProgramResourceOption, 0, len(candidates))
	for _, candidate := range candidates {
		if candidate.expression == nil {
			continue
		}
		expression := candidate.expression
		if candidate.unwrapConversion {
			if call, ok := expression.(*model.FunctionCallExpression); ok && call.Name == pcl.IntrinsicConvert {
				expression, _ = pcl.ParseConvertCall(call)
			}
		}
		if candidate.propertyReferences {
			expression = pcl.RewritePropertyReferences(expression)
		}
		var value string
		var err error
		if candidate.customTimeouts {
			value, err = lowerer.customTimeoutsExpression(expression)
		} else if candidate.aliases {
			value, err = lowerer.aliasesExpression(expression)
		} else if candidate.hooks {
			value, err = lowerer.hooksExpression(expression)
		} else if candidate.providers {
			value, err = lowerer.providersExpression(expression)
		} else {
			value, err = lowerer.expression(expression)
		}
		if err != nil {
			return nil, fmt.Errorf("resource option %q: %w", candidate.name, err)
		}
		if candidate.input {
			value = "(" + value + ").input()"
		}
		result = append(result, dartProgramResourceOption{
			Name: candidate.name, Expression: value,
		})
	}
	return result, nil
}
