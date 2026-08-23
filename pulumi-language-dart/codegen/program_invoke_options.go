package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

var dartInvokeOptionNames = map[string]string{
	"dependsOn":         "dependsOn",
	"parent":            "parent",
	"pluginDownloadUrl": "pluginDownloadURL",
	"provider":          "provider",
	"version":           "version",
}

func (lowerer programLowerer) invokeOptions(call *model.FunctionCallExpression) (string, error) {
	options, ok := pcl.InvokeOptions(call)
	if !ok {
		return "", nil
	}
	fields := make([]string, 0, len(options.Items))
	for _, item := range options.Items {
		name := pcl.LiteralValueString(item.Key)
		dartName, supported := dartInvokeOptionNames[name]
		if !supported {
			return "", fmt.Errorf("unsupported invoke option %q", name)
		}
		value, err := lowerer.expression(item.Value)
		if err != nil {
			return "", fmt.Errorf("invoke option %q: %w", name, err)
		}
		fields = append(fields, dartName+": "+value)
	}
	return "pulumi.InvokeOutputOptions(" + strings.Join(fields, ", ") + ")", nil
}
