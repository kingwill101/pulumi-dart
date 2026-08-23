package lower

import "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen/schemair"

func NeedsDecodeListHelper(typeSpec schemair.Type) bool {
	return needsCollectionHelper(typeSpec, "array", NeedsDecodeConversion)
}

func NeedsDecodeMapHelper(typeSpec schemair.Type) bool {
	return needsCollectionHelper(typeSpec, "map", NeedsDecodeConversion)
}

func NeedsEncodeListHelper(typeSpec schemair.Type) bool {
	return needsCollectionHelper(typeSpec, "array", NeedsEncodeConversion)
}

func NeedsEncodeMapHelper(typeSpec schemair.Type) bool {
	return needsCollectionHelper(typeSpec, "map", NeedsEncodeConversion)
}

func needsCollectionHelper(typeSpec schemair.Type, targetKind string, needsConversion func(schemair.Type) bool) bool {
	if typeSpec.Kind != "array" && typeSpec.Kind != "map" {
		return false
	}
	element := ElementType(typeSpec)
	if typeSpec.Kind == targetKind && needsConversion(element) {
		return true
	}
	return needsCollectionHelper(element, targetKind, needsConversion)
}
