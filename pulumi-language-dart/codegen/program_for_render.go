package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"

func isTopLevelOutputType(typ model.Type) bool {
	_, ok := typ.(*model.OutputType)
	return ok
}

func liftForExpressionResult(result string, typ model.Type) string {
	dartType := dartConfigValueType(typ)
	conversion := "value as " + dartType
	switch collection := model.ResolveOutputs(typ).(type) {
	case *model.ListType:
		conversion = "(value as List).cast<" + dartConfigValueType(collection.ElementType) + ">()"
	case *model.SetType:
		conversion = "(value as Iterable).cast<" + dartConfigValueType(collection.ElementType) + ">().toSet()"
	case *model.MapType:
		conversion = "(value as Map).cast<String, " + dartConfigValueType(collection.ElementType) + ">()"
	}
	return "pulumi.output(" + result + ").apply<" + dartType + ">((value) => " + conversion + ")"
}

func dartForLoop(collection, key, value string, mapCollection bool) string {
	if mapCollection {
		if key == "" {
			return "for (final " + value + " in (" + collection + ").values)"
		}
		return "for (final MapEntry(key: " + key + ", value: " + value + ") in (" + collection + ").entries)"
	}
	if key == "" {
		return "for (final " + value + " in (" + collection + " as Iterable))"
	}
	return "for (final (" + key + ", " + value + ") in (" + collection + " as Iterable).indexed)"
}
