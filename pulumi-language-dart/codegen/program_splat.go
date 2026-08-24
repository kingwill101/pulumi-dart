package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) splatExpression(expression *model.SplatExpression) (string, error) {
	source, err := lowerer.expression(expression.Source)
	if err != nil {
		return "", fmt.Errorf("source: %w", err)
	}
	old, existed := lowerer.names[""]
	lowerer.names[""] = "item"
	oldTyped, hadTyped := lowerer.typedObjectNames["item"]
	if collectionElementIsTypedObject(expression.Source.Type()) {
		lowerer.typedObjectNames["item"] = true
	}
	defer func() {
		restoreProgramName(lowerer.names, "", old, existed)
		if hadTyped {
			lowerer.typedObjectNames["item"] = oldTyped
		} else {
			delete(lowerer.typedObjectNames, "item")
		}
	}()
	each, err := lowerer.expression(expression.Each)
	if err != nil {
		return "", fmt.Errorf("each: %w", err)
	}
	if model.ContainsOutputs(expression.Source.Type()) {
		return "pulumi.output(" + source + ").apply((items) => [for (final item in items) " + each + "])", nil
	}
	return "[for (final item in " + source + ") " + each + "]", nil
}
