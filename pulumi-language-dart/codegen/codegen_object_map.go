package codegen

import "fmt"

func nullGuardedExpression(sourceExpr, resultExpr string) string {
	return fmt.Sprintf(
		"(() { final guardedValue = %s; if (guardedValue == null) return null; return %s; })()",
		sourceExpr,
		resultExpr,
	)
}

func objectClassFromMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	sourceExpr := fmt.Sprintf("map[%s]", dartStringLiteral(property.Name))
	typeSpec := propertyTypeSpec(property)
	decodeSourceExpr := sourceExpr
	switch typeSpec.Kind {
	case "object", "enum":
		decodeSourceExpr = sourceExpr + "!"
	case "array", "map":
		if typeSpecNeedsDecodeConversion(typeSpecElement(typeSpec)) {
			decodeSourceExpr = sourceExpr + "!"
		}
	}
	decodedExpr := typeSpecDecodeExpression(typeSpec, decodeSourceExpr)
	if objectClass.UsesInputTypes {
		if property.Required {
			return fmt.Sprintf("pulumi.Input.fromValue(%s)", decodedExpr)
		}
		optionalDecodedExpr := typeSpecDecodeExpression(typeSpec, "guardedValue")
		return nullGuardedExpression(
			sourceExpr,
			fmt.Sprintf("pulumi.Input.fromValue(%s)", optionalDecodedExpr),
		)
	}
	if property.Required {
		return decodedExpr
	}
	optionalDecodedExpr := typeSpecDecodeExpression(typeSpec, "guardedValue")
	return nullGuardedExpression(sourceExpr, optionalDecodedExpr)
}

func objectClassToMapExpressionFromSource(objectClass packageObjectClassSpec, property packagePropertySpec, sourceExpr string) string {
	typeSpec := propertyTypeSpec(property)
	if objectClass.UsesInputTypes {
		if typeSpecNeedsEncodeConversion(typeSpec) {
			if property.Required {
				return fmt.Sprintf(
					"pulumi.Input.mapInputValue<%s, %s>(%s, (value) => %s)",
					typeSpec.DartType,
					typeSpecWireDartType(typeSpec),
					sourceExpr,
					typeSpecEncodeExpression(typeSpec, "value"),
				)
			}
			return fmt.Sprintf(
				"pulumi.Input.mapOptionalInputValue<%s, %s>(%s, (value) => %s)",
				typeSpec.DartType,
				typeSpecWireDartType(typeSpec),
				sourceExpr,
				typeSpecEncodeExpression(typeSpec, "value"),
			)
		}
		return sourceExpr
	}

	if typeSpecNeedsEncodeConversion(typeSpec) {
		if !property.Required {
			if typeSpec.Kind == "object" {
				return fmt.Sprintf("%s?.toMap()", sourceExpr)
			}
			if typeSpec.Kind == "enum" {
				return fmt.Sprintf("%s?.wireValue", sourceExpr)
			}
			return nullGuardedExpression(
				sourceExpr,
				typeSpecEncodeExpression(typeSpec, "guardedValue"),
			)
		}
		return typeSpecEncodeExpression(typeSpec, sourceExpr)
	}
	return sourceExpr
}

func objectClassToMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	return objectClassToMapExpressionFromSource(objectClass, property, property.FieldName)
}

func resourceOutputValueType(property packagePropertySpec) string {
	return nullableDartType(propertyBaseDartType(property), property.Required)
}

func resourceOutputDecoderExpression(property packagePropertySpec) string {
	typeSpec := propertyTypeSpec(property)
	if !typeSpecNeedsDecodeConversion(typeSpec) {
		return ""
	}

	decodedExpr := typeSpecDecodeExpression(typeSpec, "guardedValue")
	return fmt.Sprintf(
		"(raw) { final guardedValue = raw; if (guardedValue == null) return null; return %s; }",
		decodedExpr,
	)
}

func resourceRegisterOutputExpression(property packagePropertySpec) string {
	outputType := resourceOutputValueType(property)
	propertyName := dartStringLiteral(property.Name)
	decoderExpr := resourceOutputDecoderExpression(property)
	if decoderExpr == "" {
		return fmt.Sprintf("registerOutput<%s>(%s)", outputType, propertyName)
	}
	return fmt.Sprintf(
		"registerOutput<%s>(%s, decoder: %s)",
		outputType,
		propertyName,
		decoderExpr,
	)
}

func configPropertyGetterType(property packagePropertySpec) string {
	base := propertyBaseDartType(property)
	if base == "dynamic" {
		return "dynamic"
	}
	return base + "?"
}

func configTypeRequiresJSONDecode(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array", "map":
		return true
	case "object":
		return true
	default:
		return false
	}
}

func configPropertyParseExpression(property packagePropertySpec, rawExpr string) string {
	typeSpec := propertyTypeSpec(property)
	if configTypeRequiresJSONDecode(typeSpec) {
		return nullGuardedExpression(
			rawExpr,
			typeSpecDecodeExpression(typeSpec, "jsonDecode(guardedValue)"),
		)
	}

	if typeSpec.Kind == "enum" {
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		parseWire := "guardedValue"
		switch wireType {
		case "int":
			parseWire = "(guardedValue).toInt()"
		case "double":
			parseWire = "(guardedValue).toDouble()"
		case "bool":
			parseWire = "(guardedValue).toBool()"
		}
		return nullGuardedExpression(
			rawExpr,
			fmt.Sprintf("%s.fromValue(%s as %s)", typeSpec.ReferenceType, parseWire, wireType),
		)
	}

	switch typeSpec.DartType {
	case "String":
		return rawExpr
	case "int":
		return fmt.Sprintf("(%s).toInt()", rawExpr)
	case "double":
		return fmt.Sprintf("(%s).toDouble()", rawExpr)
	case "bool":
		return fmt.Sprintf("(%s).toBool()", rawExpr)
	default:
		return rawExpr
	}
}

func registerOutputAssignmentTarget(fieldName string, parameterNames ...string) string {
	for _, parameterName := range parameterNames {
		if fieldName == parameterName {
			return "this." + fieldName
		}
	}
	return fieldName
}
