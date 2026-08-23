package codegen

var dartReservedIdentifiers = map[string]struct{}{
	"assert": {}, "break": {}, "case": {}, "catch": {}, "class": {}, "const": {}, "continue": {},
	"default": {}, "do": {}, "else": {}, "enum": {}, "extends": {}, "false": {}, "final": {},
	"finally": {}, "for": {}, "if": {}, "in": {}, "is": {}, "new": {}, "null": {}, "rethrow": {},
	"return": {}, "super": {}, "switch": {}, "this": {}, "throw": {}, "true": {}, "try": {},
	"var": {}, "void": {}, "while": {}, "with": {},
	"bool": {}, "double": {}, "dynamic": {}, "int": {}, "num": {}, "string": {}, "String": {},
	"object": {}, "Object": {}, "never": {}, "Never": {},
}

var dartDisallowedFieldNames = map[string]struct{}{
	"runtimeType": {}, "hashCode": {}, "toString": {}, "noSuchMethod": {},
	"toMap": {}, "fromMap": {}, "transformations": {}, "childResources": {},
}

var dartDisallowedTypeNames = map[string]struct{}{
	"ComponentResource": {}, "CustomResource": {}, "CustomResourceOptions": {}, "Deployment": {},
	"Function": {}, "Input": {}, "InputArgs": {}, "InvokeOptions": {}, "List": {}, "Map": {},
	"Output": {}, "Resource": {}, "ResourceOptions": {}, "Set": {},
}
