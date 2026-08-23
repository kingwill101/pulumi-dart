package codegen

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/lower"

func objectClassFromMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	return lower.ObjectFromMapExpression(objectClass, property)
}

func objectClassToMapExpressionFromSource(
	objectClass packageObjectClassSpec,
	property packagePropertySpec,
	sourceExpression string,
) string {
	return lower.ObjectToMapExpressionFromSource(objectClass, property, sourceExpression)
}

func objectClassToMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	return lower.ObjectToMapExpression(objectClass, property)
}

func resourceOutputValueType(property packagePropertySpec) string {
	return lower.ResourceOutputValueType(property)
}

func resourceRegisterOutputExpression(property packagePropertySpec) string {
	return lower.ResourceRegisterOutputExpression(property)
}

func configPropertyGetterType(property packagePropertySpec) string {
	return lower.ConfigPropertyGetterType(property)
}

func configTypeRequiresJSONDecode(typeSpec packageTypeSpec) bool {
	return lower.ConfigTypeRequiresJSONDecode(typeSpec)
}

func configPropertyParseExpression(property packagePropertySpec, rawExpression string) string {
	return lower.ConfigPropertyParseExpression(property, rawExpression)
}

func registerOutputAssignmentTarget(fieldName string, parameterNames ...string) string {
	return lower.RegisterOutputAssignmentTarget(fieldName, parameterNames...)
}
