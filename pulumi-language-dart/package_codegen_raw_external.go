package main

import (
	"encoding/json"
	"fmt"
	"net/url"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
)

type externalRefResolver struct {
	currentProvider string
	searchRoots     []string
	indexByProvider map[string]*externalSchemaIndex
}

func rawRequiredSet(required []string) map[string]struct{} {
	requiredSet := make(map[string]struct{}, len(required))
	for _, property := range required {
		requiredSet[property] = struct{}{}
	}
	return requiredSet
}

func mergeRawPropertySpecs(base map[string]rawPropertyTypeSpec, extra map[string]rawPropertyTypeSpec) map[string]rawPropertyTypeSpec {
	merged := make(map[string]rawPropertyTypeSpec, len(base)+len(extra))
	for key, value := range base {
		merged[key] = value
	}
	for key, value := range extra {
		if _, exists := merged[key]; !exists {
			merged[key] = value
		}
	}
	return merged
}

func appendDistinctStringSet(base []string, extras []string) []string {
	existing := make(map[string]struct{}, len(base))
	for _, item := range base {
		existing[item] = struct{}{}
	}
	merged := append([]string{}, base...)
	for _, item := range extras {
		if _, seen := existing[item]; seen {
			continue
		}
		existing[item] = struct{}{}
		merged = append(merged, item)
	}
	return merged
}

func mergeRawMethods(base map[string]string, extra map[string]string) map[string]string {
	merged := make(map[string]string, len(base)+len(extra))
	for key, value := range base {
		merged[key] = value
	}
	for key, value := range extra {
		merged[key] = value
	}
	return merged
}

func enumValueName(preferred string, value any, used map[string]int) string {
	candidate := preferred
	if strings.TrimSpace(candidate) == "" {
		candidate = fmt.Sprintf("value_%v", value)
	}
	return propertyFieldName(candidate, used)
}

func dartEnumLiteral(value any, typeName string) (string, bool) {
	switch typeName {
	case "String":
		v, ok := value.(string)
		if !ok {
			return "", false
		}
		return dartDoubleQuotedStringLiteral(v), true
	case "bool":
		v, ok := value.(bool)
		if !ok {
			return "", false
		}
		if v {
			return "true", true
		}
		return "false", true
	case "int":
		switch v := value.(type) {
		case int:
			return strconv.Itoa(v), true
		case int64:
			return strconv.FormatInt(v, 10), true
		case float64:
			if v == float64(int64(v)) {
				return strconv.FormatInt(int64(v), 10), true
			}
		}
		return "", false
	case "double":
		switch v := value.(type) {
		case float64:
			return strconv.FormatFloat(v, 'f', -1, 64), true
		case int:
			return strconv.FormatFloat(float64(v), 'f', -1, 64), true
		case int64:
			return strconv.FormatFloat(float64(v), 'f', -1, 64), true
		}
		return "", false
	default:
		return "", false
	}
}

func dartDoubleQuotedStringLiteral(value string) string {
	quoted := strconv.Quote(value)
	return strings.ReplaceAll(quoted, "$", `\$`)
}

func dartStringLiteral(value string) string {
	var b strings.Builder
	b.Grow(len(value) + 2)
	b.WriteByte('\'')
	for _, r := range value {
		switch r {
		case '\\':
			b.WriteString(`\\`)
		case '\'':
			b.WriteString(`\'`)
		case '$':
			b.WriteString(`\$`)
		case '\n':
			b.WriteString(`\n`)
		case '\r':
			b.WriteString(`\r`)
		case '\t':
			b.WriteString(`\t`)
		case '\b':
			b.WriteString(`\b`)
		case '\f':
			b.WriteString(`\f`)
		default:
			if r < 0x20 {
				fmt.Fprintf(&b, `\u%04x`, r)
				continue
			}
			b.WriteRune(r)
		}
	}
	b.WriteByte('\'')
	return b.String()
}

func rawRefToken(ref string) string {
	if ref == "" {
		return ""
	}
	const typesPrefix = "#/types/"
	if strings.HasPrefix(ref, typesPrefix) {
		return strings.TrimPrefix(ref, typesPrefix)
	}
	const resourcesPrefix = "#/resources/"
	if strings.HasPrefix(ref, resourcesPrefix) {
		return strings.TrimPrefix(ref, resourcesPrefix)
	}
	return ref
}

// Section: external schema reference resolution
//
// These helpers keep cross-provider type/resource refs strongly typed by
// mapping refs like /aws/v7.15.0/schema.json#/resources/aws:ecr/repository:Repository
// to generated Dart symbols from package:pulumi_aws/<module>.dart.
func newExternalRefResolver(currentProvider, outputDir string) *externalRefResolver {
	roots := make([]string, 0, 3)
	if strings.TrimSpace(outputDir) != "" {
		roots = append(roots, outputDir)
	}
	if cwd, err := os.Getwd(); err == nil && cwd != "" {
		roots = append(roots, cwd)
	}

	dedup := map[string]struct{}{}
	uniqueRoots := make([]string, 0, len(roots))
	for _, root := range roots {
		if root == "" {
			continue
		}
		abs, err := filepath.Abs(root)
		if err != nil {
			continue
		}
		if _, exists := dedup[abs]; exists {
			continue
		}
		dedup[abs] = struct{}{}
		uniqueRoots = append(uniqueRoots, abs)
	}

	return &externalRefResolver{
		currentProvider: canonicalProviderName(currentProvider),
		searchRoots:     uniqueRoots,
		indexByProvider: map[string]*externalSchemaIndex{},
	}
}

func parseExternalSchemaRef(ref string) (externalTypeRefSpec, bool) {
	ref = strings.TrimSpace(ref)
	if ref == "" || !strings.HasPrefix(ref, "/") {
		return externalTypeRefSpec{}, false
	}

	parts := strings.SplitN(ref, "#/", 2)
	if len(parts) != 2 {
		return externalTypeRefSpec{}, false
	}
	left := strings.TrimSpace(parts[0])
	right := strings.TrimSpace(parts[1])

	leftSegments := strings.Split(strings.TrimPrefix(left, "/"), "/")
	if len(leftSegments) < 3 {
		return externalTypeRefSpec{}, false
	}
	if leftSegments[2] != "schema.json" {
		return externalTypeRefSpec{}, false
	}

	providerName := canonicalProviderName(leftSegments[0])
	versionSegment := strings.TrimSpace(leftSegments[1])
	if providerName == "" || !strings.HasPrefix(strings.ToLower(versionSegment), "v") {
		return externalTypeRefSpec{}, false
	}
	providerVersion := strings.TrimPrefix(versionSegment, "v")
	providerVersion = strings.TrimPrefix(providerVersion, "V")

	rightSegments := strings.SplitN(right, "/", 2)
	if len(rightSegments) != 2 {
		return externalTypeRefSpec{}, false
	}
	refKind := strings.ToLower(strings.TrimSpace(rightSegments[0]))
	if refKind != "types" && refKind != "resources" {
		return externalTypeRefSpec{}, false
	}

	token, err := url.PathUnescape(rightSegments[1])
	if err != nil {
		token = rightSegments[1]
	}
	token = strings.TrimSpace(token)
	if token == "" {
		return externalTypeRefSpec{}, false
	}

	className := canonicalTypeName(tokenElementName(token))
	if className == "" {
		return externalTypeRefSpec{}, false
	}

	modulePath := tokenModulePath(token)
	moduleLibrary := moduleLibraryFilePath(modulePath)
	importPackage := toDartPackageName("", providerName)
	importPath := fmt.Sprintf("package:%s/%s", importPackage, moduleLibrary)
	importAlias := sanitizeDartIdentifier(importPackage + "_" + strings.TrimSuffix(moduleLibrary, ".dart"))
	qualifiedType := fmt.Sprintf("%s.%s", importAlias, className)

	return externalTypeRefSpec{
		ProviderName:    providerName,
		ProviderVersion: providerVersion,
		RefKind:         refKind,
		Token:           token,
		ImportPackage:   importPackage,
		ImportPath:      importPath,
		ImportAlias:     importAlias,
		ClassName:       className,
		QualifiedType:   qualifiedType,
	}, true
}

func (r *externalRefResolver) resolve(ref string) (externalTypeRefSpec, externalSchemaTypeInfo, bool) {
	if r == nil {
		return externalTypeRefSpec{}, externalSchemaTypeInfo{}, false
	}

	externalRef, ok := parseExternalSchemaRef(ref)
	if !ok {
		return externalTypeRefSpec{}, externalSchemaTypeInfo{}, false
	}
	if externalRef.ProviderName == "" || externalRef.ProviderName == r.currentProvider {
		return externalTypeRefSpec{}, externalSchemaTypeInfo{}, false
	}

	// Resources are always class references in provider SDKs.
	if externalRef.RefKind == "resources" {
		return externalRef, externalSchemaTypeInfo{Kind: "resource", UseReferenceType: true}, true
	}

	typeInfo := externalSchemaTypeInfo{
		Kind:             "object",
		WireType:         "Map<String, dynamic>",
		UseReferenceType: true,
	}
	if index := r.indexForProvider(externalRef.ProviderName); index != nil {
		if resolvedInfo, exists := index.TypeInfoByToken[externalRef.Token]; exists {
			typeInfo = resolvedInfo
		}
	}

	return externalRef, typeInfo, true
}

func (r *externalRefResolver) indexForProvider(providerName string) *externalSchemaIndex {
	providerName = canonicalProviderName(providerName)
	if providerName == "" {
		return nil
	}
	if index, exists := r.indexByProvider[providerName]; exists {
		return index
	}

	schemaPath := resolveExternalSchemaPath(providerName, r.searchRoots)
	if schemaPath == "" {
		r.indexByProvider[providerName] = nil
		return nil
	}

	schemaBytes, err := os.ReadFile(schemaPath)
	if err != nil {
		r.indexByProvider[providerName] = nil
		return nil
	}

	var rawSpec rawPackageSchema
	if err := json.Unmarshal(schemaBytes, &rawSpec); err != nil {
		r.indexByProvider[providerName] = nil
		return nil
	}

	index := &externalSchemaIndex{TypeInfoByToken: map[string]externalSchemaTypeInfo{}}
	for token, rawType := range rawSpec.Types {
		info := externalSchemaTypeInfo{}
		switch {
		case len(rawType.Enum) > 0:
			info.Kind = "enum"
			info.WireType = dartTypeFromRawTypeName(rawType.Type)
			info.UseReferenceType = true
		case rawType.Type == "object":
			info.Kind = "object"
			info.WireType = "Map<String, dynamic>"
			info.UseReferenceType = len(rawType.Properties) > 0
		case rawType.Type == "boolean" || rawType.Type == "integer" || rawType.Type == "number" || rawType.Type == "string":
			info.Kind = "scalar"
			info.DartType = dartTypeFromRawTypeName(rawType.Type)
		default:
			info.Kind = "dynamic"
		}
		index.TypeInfoByToken[token] = info
	}

	r.indexByProvider[providerName] = index
	return index
}

func resolveExternalSchemaPath(providerName string, roots []string) string {
	providerName = canonicalProviderName(providerName)
	if providerName == "" {
		return ""
	}

	if envDir := strings.TrimSpace(os.Getenv("PULUMI_DART_SCHEMAS_DIR")); envDir != "" {
		candidate := filepath.Join(envDir, providerName+".schema.json")
		if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
			return candidate
		}
	}

	for _, root := range roots {
		dir := root
		for {
			candidate := filepath.Join(dir, "packages", "schemas", providerName+".schema.json")
			if info, err := os.Stat(candidate); err == nil && !info.IsDir() {
				return candidate
			}

			parent := filepath.Dir(dir)
			if parent == dir {
				break
			}
			dir = parent
		}
	}

	return ""
}

func directReferenceInfo(typeSpec packageTypeSpec) (referenceKind string, referenceType string, referenceWireType string) {
	switch typeSpec.Kind {
	case "enum":
		return "enum", typeSpec.ReferenceType, typeSpec.ReferenceWireType
	case "object":
		return "object", typeSpec.ReferenceType, "Map<String, dynamic>"
	default:
		return "", "", ""
	}
}

func makePackageTypeSpec(kind, dartType string) packageTypeSpec {
	return packageTypeSpec{
		Kind:     kind,
		DartType: dartType,
	}
}

func dartTypeSpecFromRawPropertyType(
	typ rawPropertyTypeSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	externalRefs *externalRefResolver,
) packageTypeSpec {
	if token := rawRefToken(typ.Ref); token != "" {
		if namedType, ok := namedTypeRefs[token]; ok {
			if namedType.Kind == "object" && !namedType.UseReferenceType {
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
			if useReferenceTypes {
				kind := namedType.Kind
				if kind == "" {
					kind = "dynamic"
				}
				return packageTypeSpec{
					Kind:              kind,
					DartType:          namedType.Name,
					ReferenceType:     namedType.Name,
					ReferenceWireType: namedType.UnderlyingType,
				}
			}
			if namedType.Kind == "enum" {
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
			if namedType.Kind == "resource" {
				return makePackageTypeSpec("dynamic", "dynamic")
			}
			return makePackageTypeSpec("object", "Map<String, dynamic>")
		}

		if externalRef, typeInfo, ok := externalRefs.resolve(typ.Ref); ok {
			switch typeInfo.Kind {
			case "resource":
				return packageTypeSpec{
					Kind:           "resource",
					DartType:       externalRef.QualifiedType,
					IsExternalRef:  true,
					ExternalImport: externalRef.ImportPath,
					ExternalAlias:  externalRef.ImportAlias,
				}
			case "enum":
				wireType := typeInfo.WireType
				if wireType == "" {
					wireType = "String"
				}
				return packageTypeSpec{
					Kind:              "enum",
					DartType:          externalRef.QualifiedType,
					ReferenceType:     externalRef.QualifiedType,
					ReferenceWireType: wireType,
					IsExternalRef:     true,
					ExternalImport:    externalRef.ImportPath,
					ExternalAlias:     externalRef.ImportAlias,
				}
			case "object":
				if !typeInfo.UseReferenceType {
					return makePackageTypeSpec("object", "Map<String, dynamic>")
				}
				return packageTypeSpec{
					Kind:              "object",
					DartType:          externalRef.QualifiedType,
					ReferenceType:     externalRef.QualifiedType,
					ReferenceWireType: "Map<String, dynamic>",
					IsExternalRef:     true,
					ExternalImport:    externalRef.ImportPath,
					ExternalAlias:     externalRef.ImportAlias,
				}
			case "scalar":
				if typeInfo.DartType != "" {
					return makePackageTypeSpec("scalar", typeInfo.DartType)
				}
			}
		}

		return makePackageTypeSpec("dynamic", "dynamic")
	}

	switch typ.Type {
	case "boolean":
		return makePackageTypeSpec("scalar", "bool")
	case "integer":
		return makePackageTypeSpec("scalar", "int")
	case "number":
		return makePackageTypeSpec("scalar", "double")
	case "string":
		return makePackageTypeSpec("scalar", "String")
	case "array":
		elementSpec := makePackageTypeSpec("dynamic", "dynamic")
		if typ.Items != nil {
			elementSpec = dartTypeSpecFromRawPropertyType(*typ.Items, namedTypeRefs, useReferenceTypes, externalRefs)
		}
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementSpec.DartType),
			ElementType: &elementSpec,
		}
	case "object":
		if typ.AdditionalProperties != nil {
			valueSpec := dartTypeSpecFromRawPropertyType(*typ.AdditionalProperties, namedTypeRefs, useReferenceTypes, externalRefs)
			return packageTypeSpec{
				Kind:        "map",
				DartType:    fmt.Sprintf("Map<String, %s>", valueSpec.DartType),
				ElementType: &valueSpec,
			}
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	}

	if len(typ.OneOf) > 0 {
		for _, candidate := range typ.OneOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes, externalRefs)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}

	if len(typ.AnyOf) > 0 {
		for _, candidate := range typ.AnyOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes, externalRefs)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func makeRawObjectClassSpec(
	baseName string,
	modulePath string,
	classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	externalRefs *externalRefResolver,
	nameSuffixes ...string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	className := uniqueQualifiedClassName(baseName, modulePath, usedClassNames, nameSuffixes...)
	return buildRawObjectClassSpec(
		className,
		modulePath,
		classComment,
		properties,
		required,
		namedTypeRefs,
		useReferenceTypes,
		usesInputTypes,
		externalRefs,
	)
}

func buildRawObjectClassSpec(
	className string,
	modulePath string,
	classComment string,
	properties map[string]rawPropertyTypeSpec,
	required []string,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	externalRefs *externalRefResolver,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(properties))
	for name := range properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(required)
	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		property := properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			useReferenceTypes,
			externalRefs,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              propertyName,
			FieldName:         propertyFieldName(propertyName, usedFieldNames),
			Comment:           strings.TrimSpace(property.Description),
			Required:          isRequired,
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	return &packageObjectClassSpec{
		ClassName:      className,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(classComment),
		UsesInputTypes: usesInputTypes,
		Properties:     fields,
	}
}

func makeRawEnumSpec(
	typeName string,
	modulePath string,
	rawType rawTypeSpec,
) *packageEnumSpec {
	if len(rawType.Enum) == 0 {
		return nil
	}

	underlyingType := dartTypeFromRawTypeName(rawType.Type)
	values := make([]packageEnumValueSpec, 0, len(rawType.Enum))
	usedValueNames := map[string]int{}
	for _, enumValue := range rawType.Enum {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Comment: strings.TrimSpace(enumValue.Description),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(rawType.Description),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}

func dartTypeFromRawTypeName(typeName string) string {
	switch typeName {
	case "boolean":
		return "bool"
	case "integer":
		return "int"
	case "number":
		return "double"
	case "string":
		return "String"
	default:
		return "String"
	}
}
