package codegen

import "github.com/pulumi/pulumi/pkg/v3/codegen/schema"

func schemaEnumTypeSpec(t *schema.EnumType, named map[string]packageNamedTypeRef, useRefs bool, provider string) packageTypeSpec {
	if namedType, ok := named[t.Token]; t.Token != "" && ok {
		if useRefs {
			return referencedNamedType("enum", namedType, namedType.UnderlyingType)
		}
		return makePackageTypeSpec("scalar", namedType.UnderlyingType)
	}
	wireType := dartTypeSpecFromSchemaType(t.ElementType, nil, false, provider).DartType
	if external, ok := externalTokenTypeSpec(t.Token, provider, "enum", wireType, true, useRefs); ok {
		return external
	}
	return dartTypeSpecFromSchemaType(t.ElementType, named, false, provider)
}

func schemaTokenTypeSpec(t *schema.TokenType, named map[string]packageNamedTypeRef, useRefs bool, provider string) packageTypeSpec {
	if namedType, ok := named[t.Token]; t.Token != "" && ok {
		return schemaNamedTokenTypeSpec(namedType, useRefs)
	}
	fallback := makePackageTypeSpec("dynamic", "dynamic")
	if t.UnderlyingType != nil {
		fallback = dartTypeSpecFromSchemaType(t.UnderlyingType, named, false, provider)
	}
	if t.Token != "" {
		if external, ok := externalTokenTypeSpec(t.Token, provider, fallback.Kind, fallback.DartType, true, useRefs); ok {
			return external
		}
	}
	if t.UnderlyingType != nil {
		return dartTypeSpecFromSchemaType(t.UnderlyingType, named, useRefs, provider)
	}
	return fallback
}

func schemaNamedTokenTypeSpec(named packageNamedTypeRef, useRefs bool) packageTypeSpec {
	switch named.Kind {
	case "enum":
		if useRefs {
			return referencedNamedType("enum", named, named.UnderlyingType)
		}
		return makePackageTypeSpec("scalar", named.UnderlyingType)
	case "object":
		if useRefs && named.UseReferenceType {
			return referencedNamedType("object", named, named.UnderlyingType)
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	case "resource":
		if useRefs {
			return referencedNamedType("resource", named, "dynamic")
		}
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func schemaObjectTypeSpec(t *schema.ObjectType, named map[string]packageNamedTypeRef, useRefs bool, provider string) packageTypeSpec {
	if namedType, ok := named[t.Token]; t.Token != "" && ok {
		if useRefs && (namedType.Kind != "object" || namedType.UseReferenceType) {
			return referencedNamedType(namedType.Kind, namedType, namedType.UnderlyingType)
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	}
	if external, ok := externalTokenTypeSpec(t.Token, provider, "object", "Map<String, dynamic>", len(t.Properties) > 0, useRefs); ok {
		return external
	}
	return makePackageTypeSpec("object", "Map<String, dynamic>")
}

func schemaResourceTypeSpec(t *schema.ResourceType, named map[string]packageNamedTypeRef, useRefs bool, provider string) packageTypeSpec {
	if useRefs {
		return packageTypeSpec{
			Kind: "resource", DartType: "pulumi.CustomResource",
			ReferenceType: "pulumi.CustomResource", ReferenceWireType: "dynamic",
		}
	}
	namedType, ok := named[resourceNamedTypeKey(t.Token)]
	if !ok {
		namedType, ok = named[t.Token]
	}
	if t.Token != "" && ok {
		return referencedNamedType("resource", namedType, "dynamic")
	}
	if external, ok := externalTokenTypeSpec(t.Token, provider, "resource", "", true, useRefs); ok {
		return external
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func referencedNamedType(kind string, named packageNamedTypeRef, wireType string) packageTypeSpec {
	return packageTypeSpec{Kind: kind, DartType: named.Name, ReferenceType: named.Name, ReferenceWireType: wireType}
}
