package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

// providerArrayForExpression preserves the provider's input object type while
// lowering a comprehension. A later cast cannot turn map-shaped PCL objects
// into generated Dart value objects.
func (lowerer programLowerer) providerArrayForExpression(
	pkg string, expression *model.ForExpression, elementType schema.Type,
) (string, error) {
	collection, err := lowerer.expression(expression.Collection)
	if err != nil {
		return "", err
	}
	key, value, restore := lowerer.bindForVariables(expression)
	defer restore()
	isOutput := model.ContainsOutputs(expression.Collection.Type())
	collectionValue := collection
	if isOutput {
		collectionValue = "collection"
	}
	mapCollection := isDartMapType(model.ResolveOutputs(expression.Collection.Type()))
	loop := dartForLoop(collectionValue, key, value, mapCollection)
	if sourceElement, ok := collectionElementSchemaType(expression.Collection.Type()); ok {
		sourceType := lowerer.providerSchemaValueDartType(pkg, sourceElement)
		loop = dartTypedForLoop(collectionValue, key, value, sourceType, mapCollection)
	}
	condition := ""
	if expression.Condition != nil {
		lowered, err := lowerer.expression(expression.Condition)
		if err != nil {
			return "", fmt.Errorf("condition: %w", err)
		}
		condition = " if (" + lowered + ")"
	}
	item, err := lowerer.typedProviderExpression(pkg, expression.Value, elementType)
	if err != nil {
		return "", fmt.Errorf("value: %w", err)
	}
	result := "[" + loop + condition + " " + item + "]"
	if isOutput {
		element := lowerer.providerSchemaValueDartType(pkg, elementType)
		inputs := "pulumi.inputList<" + element + ">(<pulumi.Input<" + element + ">>[" + loop + condition + " (" + item + ").input()]) as pulumi.Input<List<" + element + ">>"
		result = "pulumi.output(" + collection + ").apply<List<" + element + ">>((collection) => " + inputs + ")"
	}
	return result, nil
}

func dartTypedForLoop(collection, key, value, element string, mapCollection bool) string {
	if mapCollection {
		if key == "" {
			return "for (final " + value + " in (" + collection + " as Map).values.cast<" + element + ">())"
		}
		return "for (final MapEntry(key: " + key + ", value: " + value + ") in (" + collection + " as Map).cast<String, " + element + ">().entries)"
	}
	if key == "" {
		return "for (final " + value + " in (" + collection + " as Iterable).cast<" + element + ">())"
	}
	return "for (final (" + key + ", " + value + ") in (" + collection + " as Iterable).cast<" + element + ">().indexed)"
}
