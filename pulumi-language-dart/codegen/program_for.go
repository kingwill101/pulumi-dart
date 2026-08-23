package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
)

func (lowerer programLowerer) forExpression(expression *model.ForExpression) (string, error) {
	collection, err := lowerer.expression(expression.Collection)
	if err != nil {
		return "", err
	}
	keyName, valueName, restore := lowerer.bindForVariables(expression)
	defer restore()

	isOutput := isTopLevelOutputType(expression.Collection.Type())
	collectionValue := collection
	if isOutput {
		collectionValue = "collection"
	}
	mapCollection := isDartMapType(model.ResolveOutputs(expression.Collection.Type()))
	loop := dartForLoop(collectionValue, keyName, valueName, mapCollection)
	condition := ""
	if expression.Condition != nil {
		lowered, err := lowerer.expression(expression.Condition)
		if err != nil {
			return "", fmt.Errorf("condition: %w", err)
		}
		condition = " if (" + lowered + ")"
	}
	value, err := lowerer.expression(expression.Value)
	if err != nil {
		return "", fmt.Errorf("value: %w", err)
	}
	if expression.Key == nil {
		result := "[" + loop + condition + " " + value + "]"
		if isOutput {
			result = "pulumi.output(" + collection + ").apply<" + dartConfigValueType(expression.Type()) + ">((collection) => " + result + ")"
		} else if model.ContainsOutputs(expression.Value.Type()) || model.ContainsOutputs(expression.Collection.Type()) {
			result = liftForExpressionResult(result, expression.Type())
		}
		return result, nil
	}
	key, err := lowerer.expression(expression.Key)
	if err != nil {
		return "", fmt.Errorf("key: %w", err)
	}
	result := "{" + loop + condition + " " + key + ": " + value + "}"
	if isOutput {
		result = "pulumi.output(" + collection + ").apply<" + dartConfigValueType(expression.Type()) + ">((collection) => " + result + ")"
	} else if model.ContainsOutputs(expression.Value.Type()) || model.ContainsOutputs(expression.Key.Type()) || model.ContainsOutputs(expression.Collection.Type()) {
		result = liftForExpressionResult(result, expression.Type())
	}
	return result, nil
}

func (lowerer programLowerer) bindForVariables(expression *model.ForExpression) (string, string, func()) {
	valueName := propertyFieldName(expression.ValueVariable.Name, lowerer.usedNames)
	oldValue, hadValue := lowerer.names[expression.ValueVariable.Name]
	lowerer.names[expression.ValueVariable.Name] = valueName
	oldTyped, hadTyped := lowerer.typedObjectNames[valueName]
	components := collectionContainsComponents(expression.Collection)
	if collectionElementIsTypedObject(expression.Collection.Type()) || components {
		lowerer.typedObjectNames[valueName] = true
	}
	oldDirect, hadDirect := lowerer.directObjectNames[valueName]
	if components {
		lowerer.directObjectNames[valueName] = true
	}
	keyName := ""
	oldKey, hadKey := "", false
	if expression.KeyVariable != nil {
		keyName = propertyFieldName(expression.KeyVariable.Name, lowerer.usedNames)
		oldKey, hadKey = lowerer.names[expression.KeyVariable.Name]
		lowerer.names[expression.KeyVariable.Name] = keyName
	}
	return keyName, valueName, func() {
		restoreProgramName(lowerer.names, expression.ValueVariable.Name, oldValue, hadValue)
		if expression.KeyVariable != nil {
			restoreProgramName(lowerer.names, expression.KeyVariable.Name, oldKey, hadKey)
		}
		if hadTyped {
			lowerer.typedObjectNames[valueName] = oldTyped
		} else {
			delete(lowerer.typedObjectNames, valueName)
		}
		if hadDirect {
			lowerer.directObjectNames[valueName] = oldDirect
		} else {
			delete(lowerer.directObjectNames, valueName)
		}
	}
}

func restoreProgramName(names map[string]string, name, old string, existed bool) {
	if existed {
		names[name] = old
	} else {
		delete(names, name)
	}
}

func isDartMapType(typ model.Type) bool {
	switch typ.(type) {
	case *model.MapType, *model.ObjectType:
		return true
	default:
		return false
	}
}
