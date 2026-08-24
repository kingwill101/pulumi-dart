package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) resourceRange(resource *pcl.Resource) (*dartProgramResourceRange, func(), error) {
	if resource.Options == nil || resource.Options.Range == nil {
		return nil, func() {}, nil
	}
	expression, err := lowerer.expression(resource.Options.Range)
	if err != nil {
		return nil, func() {}, fmt.Errorf("range: %w", err)
	}
	if model.ContainsOutputs(resource.Options.Range.Type()) {
		*lowerer.needsAsyncInitialization = true
	}
	typ := model.ResolveOutputs(resource.Options.Range.Type())
	kind := "list"
	if typ == model.BoolType {
		kind = "bool"
	} else if typ == model.IntType || typ == model.NumberType {
		kind = "number"
	} else if isDartMapType(typ) {
		kind = "map"
	}
	old, existed := lowerer.names["range"]
	lowerer.names["range"] = "range"
	oldTyped, hadTyped := lowerer.typedObjectNames["range"]
	lowerer.typedObjectNames["range"] = true
	return &dartProgramResourceRange{
			Expression: expression, Kind: kind, IsOutput: model.ContainsOutputs(resource.Options.Range.Type()),
		}, func() {
			restoreProgramName(lowerer.names, "range", old, existed)
			if hadTyped {
				lowerer.typedObjectNames["range"] = oldTyped
			} else {
				delete(lowerer.typedObjectNames, "range")
			}
		}, nil
}
