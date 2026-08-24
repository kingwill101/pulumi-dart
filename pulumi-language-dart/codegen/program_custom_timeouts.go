package codegen

import (
	"fmt"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) customTimeoutsExpression(expression model.Expression) (string, error) {
	object, ok := expression.(*model.ObjectConsExpression)
	if !ok {
		return "", fmt.Errorf("custom timeouts must be an object, got %T", expression)
	}

	fields := make([]string, len(object.Items))
	for index, item := range object.Items {
		name := pcl.LiteralValueString(item.Key)
		switch name {
		case "create", "update", "delete", "read":
		default:
			return "", fmt.Errorf("unknown custom timeout %q", name)
		}
		value, err := lowerer.expression(item.Value)
		if err != nil {
			return "", fmt.Errorf("custom timeout %q: %w", name, err)
		}
		fields[index] = name + ": " + value
	}
	return "pulumi.CustomTimeouts(" + strings.Join(fields, ", ") + ")", nil
}
