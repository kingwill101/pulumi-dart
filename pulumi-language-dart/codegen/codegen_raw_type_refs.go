package codegen

func rawReferenceTypeSpec(ref string, named map[string]packageNamedTypeRef, useRefs bool, resolver *externalRefResolver) packageTypeSpec {
	if namedType, ok := named[rawRefToken(ref)]; ok {
		return rawNamedReferenceTypeSpec(namedType, useRefs)
	}
	externalRef, typeInfo, ok := resolver.resolve(ref)
	if !ok {
		return makePackageTypeSpec("dynamic", "dynamic")
	}
	return rawExternalReferenceTypeSpec(externalRef, typeInfo)
}

func rawNamedReferenceTypeSpec(named packageNamedTypeRef, useRefs bool) packageTypeSpec {
	if named.Kind == "object" && !named.UseReferenceType {
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	}
	if useRefs {
		kind := named.Kind
		if kind == "" {
			kind = "dynamic"
		}
		return packageTypeSpec{Kind: kind, DartType: named.Name, ReferenceType: named.Name, ReferenceWireType: named.UnderlyingType}
	}
	switch named.Kind {
	case "enum":
		return makePackageTypeSpec("scalar", named.UnderlyingType)
	case "resource":
		return makePackageTypeSpec("dynamic", "dynamic")
	default:
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	}
}

func rawExternalReferenceTypeSpec(ref externalTypeRefSpec, info externalSchemaTypeInfo) packageTypeSpec {
	base := packageTypeSpec{Kind: info.Kind, DartType: ref.QualifiedType, IsExternalRef: true, ExternalImport: ref.ImportPath, ExternalAlias: ref.ImportAlias}
	switch info.Kind {
	case "resource":
		return base
	case "enum":
		if info.WireType == "" {
			info.WireType = "String"
		}
		base.ReferenceType, base.ReferenceWireType = ref.QualifiedType, info.WireType
		return base
	case "object":
		if !info.UseReferenceType {
			return makePackageTypeSpec("object", "Map<String, dynamic>")
		}
		base.ReferenceType, base.ReferenceWireType = ref.QualifiedType, "Map<String, dynamic>"
		return base
	case "scalar":
		if info.DartType != "" {
			return makePackageTypeSpec("scalar", info.DartType)
		}
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}
