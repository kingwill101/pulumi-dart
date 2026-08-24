package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) componentRange(component *pcl.Component) (*dartProgramResourceRange, func(), error) {
	if component.Options == nil || component.Options.Range == nil {
		return nil, func() {}, nil
	}
	expression, err := lowerer.expression(component.Options.Range)
	if err != nil {
		return nil, func() {}, fmt.Errorf("range: %w", err)
	}
	typ := model.ResolveOutputs(component.Options.Range.Type())
	kind := "list"
	if typ == model.BoolType {
		kind = "bool"
	} else if typ == model.IntType || typ == model.NumberType {
		kind = "number"
	} else if isDartMapType(typ) {
		kind = "map"
	}
	isOutput := model.ContainsOutputs(component.Options.Range.Type())
	if isOutput {
		*lowerer.needsAsyncInitialization = true
	}
	old, existed := lowerer.names["range"]
	lowerer.names["range"] = "range"
	oldTyped, hadTyped := lowerer.typedObjectNames["range"]
	lowerer.typedObjectNames["range"] = true
	return &dartProgramResourceRange{Expression: expression, Kind: kind, IsOutput: isOutput}, func() {
		restoreProgramName(lowerer.names, "range", old, existed)
		if hadTyped {
			lowerer.typedObjectNames["range"] = oldTyped
		} else {
			delete(lowerer.typedObjectNames, "range")
		}
	}, nil
}
