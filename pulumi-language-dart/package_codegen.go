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
	"unicode"
	"unicode/utf8"

	"github.com/pkg/errors"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

type packageSchema struct {
	Name             string                         `json:"name"`
	Namespace        string                         `json:"namespace"`
	Version          string                         `json:"version"`
	Description      string                         `json:"description"`
	License          string                         `json:"license"`
	Homepage         string                         `json:"homepage"`
	Repository       string                         `json:"repository"`
	Keywords         []string                       `json:"keywords"`
	Parameterization *packageParameterizationSpec   `json:"-"`
	Resources        map[string]packageResourceSpec `json:"resources"`
	Functions        map[string]packageFunctionSpec `json:"functions"`
	Config           *packageConfigSpec             `json:"-"`
	Enums            []packageEnumSpec              `json:"-"`
	ObjectClasses    []packageObjectClassSpec       `json:"-"`
}

type packageParameterizationSpec struct {
	PluginName     string
	PluginVersion  string
	PackageName    string
	PackageVersion string
	DownloadURL    string
	Value          []byte
}

type packageResourceSpec struct {
	IsComponent      bool                  `json:"isComponent"`
	IsProvider       bool                  `json:"isProvider"`
	Comment          string                `json:"-"`
	StateClass       string                `json:"-"`
	ArgsClass        string                `json:"-"`
	OutputProperties []packagePropertySpec `json:"-"`
	Methods          []packageResourceMethodSpec
}

type packageFunctionSpec struct {
	Comment     string `json:"-"`
	HasArgs     bool   `json:"-"`
	ArgsClass   string `json:"-"`
	ResultClass string `json:"-"`
}

type packageResourceMethodSpec struct {
	Name        string `json:"-"`
	Token       string `json:"-"`
	Comment     string `json:"-"`
	ArgsClass   string `json:"-"`
	ResultClass string `json:"-"`
	HasReturn   bool   `json:"-"`
}

type packageObjectClassSpec struct {
	ClassName      string
	CanonicalName  string
	ModulePath     string
	Comment        string
	UsesInputTypes bool
	Properties     []packagePropertySpec
}

type packagePropertySpec struct {
	Name              string
	FieldName         string
	Comment           string
	Required          bool
	TypeSpec          packageTypeSpec
	DartType          string
	ReferenceKind     string
	ReferenceType     string
	ReferenceWireType string
}

type packageTypeSpec struct {
	Kind              string
	DartType          string
	ReferenceType     string
	ReferenceWireType string
	ElementType       *packageTypeSpec
	IsExternalRef     bool
	ExternalImport    string
	ExternalAlias     string
}

type packageEnumSpec struct {
	EnumName       string
	CanonicalName  string
	ModulePath     string
	Comment        string
	UnderlyingType string
	Values         []packageEnumValueSpec
}

type packageEnumValueSpec struct {
	Name    string
	Comment string
	Literal string
}

type packageConfigSpec struct {
	ClassName  string
	Comment    string
	Properties []packagePropertySpec
}

type packageNamedTypeRef struct {
	Kind             string
	Name             string
	CanonicalName    string
	UnderlyingType   string
	UseReferenceType bool
}

type rawPackageSchema struct {
	Name        string                     `json:"name"`
	Namespace   string                     `json:"namespace"`
	Version     string                     `json:"version"`
	Description string                     `json:"description"`
	License     string                     `json:"license"`
	Homepage    string                     `json:"homepage"`
	Repository  string                     `json:"repository"`
	Keywords    []string                   `json:"keywords"`
	Types       map[string]rawTypeSpec     `json:"types"`
	Config      rawConfigSpec              `json:"config"`
	Resources   map[string]rawResourceSpec `json:"resources"`
	Functions   map[string]rawFunctionSpec `json:"functions"`
	Provider    *rawResourceSpec           `json:"provider"`
}

type rawConfigSpec struct {
	Description string                         `json:"description"`
	Variables   map[string]rawPropertyTypeSpec `json:"variables"`
	Required    []string                       `json:"required"`
}

type rawResourceSpec struct {
	Token           string                         `json:"token"`
	Description     string                         `json:"description"`
	IsComponent     bool                           `json:"isComponent"`
	IsProvider      bool                           `json:"isProvider"`
	StateInputs     *rawObjectSpec                 `json:"stateInputs"`
	InputProperties map[string]rawPropertyTypeSpec `json:"inputProperties"`
	RequiredInputs  []string                       `json:"requiredInputs"`
	Properties      map[string]rawPropertyTypeSpec `json:"properties"`
	Required        []string                       `json:"required"`
	Methods         map[string]string              `json:"methods"`
}

type rawFunctionSpec struct {
	Description string         `json:"description"`
	Inputs      *rawObjectSpec `json:"inputs"`
	Outputs     *rawObjectSpec `json:"outputs"`
}

type rawObjectSpec struct {
	Properties map[string]rawPropertyTypeSpec `json:"properties"`
	Required   []string                       `json:"required"`
}

type rawTypeSpec struct {
	Description          string                         `json:"description"`
	Type                 string                         `json:"type"`
	Enum                 []rawEnumValueSpec             `json:"enum"`
	Properties           map[string]rawPropertyTypeSpec `json:"properties"`
	Required             []string                       `json:"required"`
	Items                *rawPropertyTypeSpec           `json:"items"`
	AdditionalProperties *rawPropertyTypeSpec           `json:"additionalProperties"`
}

type rawEnumValueSpec struct {
	Name        string `json:"name"`
	Description string `json:"description"`
	Value       any    `json:"value"`
}

type rawPropertyTypeSpec struct {
	Description          string                `json:"description"`
	Type                 string                `json:"type"`
	Ref                  string                `json:"$ref"`
	Items                *rawPropertyTypeSpec  `json:"items"`
	AdditionalProperties *rawPropertyTypeSpec  `json:"additionalProperties"`
	OneOf                []rawPropertyTypeSpec `json:"oneOf"`
	AnyOf                []rawPropertyTypeSpec `json:"anyOf"`
}

type externalTypeRefSpec struct {
	ProviderName    string
	ProviderVersion string
	RefKind         string
	Token           string
	ImportPackage   string
	ImportPath      string
	ImportAlias     string
	ClassName       string
	QualifiedType   string
}

type externalSchemaTypeInfo struct {
	Kind             string
	DartType         string
	WireType         string
	UseReferenceType bool
}

type externalSchemaIndex struct {
	TypeInfoByToken map[string]externalSchemaTypeInfo
}

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

func makeRawResourceOutputPropertySpecs(
	resource rawResourceSpec,
	namedTypeRefs map[string]packageNamedTypeRef,
	externalRefs *externalRefResolver,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	propertyNames := make([]string, 0, len(resource.Properties))
	for name := range resource.Properties {
		propertyNames = append(propertyNames, name)
	}
	sort.Strings(propertyNames)

	requiredSet := rawRequiredSet(resource.Required)
	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(propertyNames))
	for _, propertyName := range propertyNames {
		if propertyName == "urn" {
			continue
		}
		if !resource.IsComponent && propertyName == "id" {
			continue
		}

		property := resource.Properties[propertyName]
		_, isRequired := requiredSet[propertyName]
		typeSpec := dartTypeSpecFromRawPropertyType(
			property,
			namedTypeRefs,
			true,
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

	if len(fields) == 0 {
		return nil
	}
	return fields
}

func schemaObjectPropertiesFromRef(objectType *schema.ObjectType) []*schema.Property {
	if objectType == nil {
		return nil
	}
	if objectType.InputShape != nil && (objectType.IsInputShape() || len(objectType.Properties) == 0) {
		return objectType.InputShape.Properties
	}
	return objectType.Properties
}

func schemaPropertiesWithoutSelf(properties []*schema.Property) []*schema.Property {
	if len(properties) == 0 {
		return nil
	}
	filtered := make([]*schema.Property, 0, len(properties))
	for _, property := range properties {
		if property == nil || property.Name == "__self__" {
			continue
		}
		filtered = append(filtered, property)
	}
	if len(filtered) == 0 {
		return nil
	}
	return filtered
}

func rawObjectSpecPropertiesWithoutSelf(properties map[string]rawPropertyTypeSpec, required []string) (map[string]rawPropertyTypeSpec, []string) {
	if len(properties) == 0 {
		return map[string]rawPropertyTypeSpec{}, nil
	}

	filteredProperties := make(map[string]rawPropertyTypeSpec, len(properties))
	filteredRequired := make([]string, 0, len(required))
	for key, value := range properties {
		if key == "__self__" {
			continue
		}
		filteredProperties[key] = value
	}
	for _, property := range required {
		if property != "__self__" {
			filteredRequired = append(filteredRequired, property)
		}
	}
	sort.Strings(filteredRequired)
	return filteredProperties, filteredRequired
}

func parsePackageSchema(schemaJSON, outputDir string) (*packageSchema, error) {
	var rawSpec rawPackageSchema
	if err := json.Unmarshal([]byte(schemaJSON), &rawSpec); err != nil {
		return nil, fmt.Errorf("failed to parse package schema: %w", err)
	}
	if rawSpec.Name == "" {
		return nil, errors.New("package schema is missing name")
	}

	spec := &packageSchema{
		Name:          rawSpec.Name,
		Namespace:     rawSpec.Namespace,
		Version:       rawSpec.Version,
		Description:   strings.TrimSpace(rawSpec.Description),
		License:       strings.TrimSpace(rawSpec.License),
		Homepage:      strings.TrimSpace(rawSpec.Homepage),
		Repository:    strings.TrimSpace(rawSpec.Repository),
		Keywords:      append([]string(nil), rawSpec.Keywords...),
		Resources:     map[string]packageResourceSpec{},
		Functions:     map[string]packageFunctionSpec{},
		Config:        nil,
		Enums:         []packageEnumSpec{},
		ObjectClasses: []packageObjectClassSpec{},
	}

	usedClassNamesByModule := map[string]map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}
	externalRefs := newExternalRefResolver(rawSpec.Name, outputDir)

	typeTokens := make([]string, 0, len(rawSpec.Types))
	for token := range rawSpec.Types {
		typeTokens = append(typeTokens, token)
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		if len(typeSpec.Enum) > 0 {
			typeName := uniqueQualifiedClassName(
				tokenElementName(token),
				tokenModulePath(token),
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				"",
				"Enum",
			)
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   dartTypeFromRawTypeName(typeSpec.Type),
				UseReferenceType: true,
			}
			continue
		}
		if typeSpec.Type == "object" {
			typeName := ""
			useReferenceType := false
			if len(typeSpec.Properties) > 0 {
				typeName = uniqueQualifiedClassName(
					tokenElementName(token),
					tokenModulePath(token),
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					"",
					"Type",
				)
				useReferenceType = true
			}
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "object",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   "Map<String, dynamic>",
				UseReferenceType: useReferenceType,
			}
		}
	}

	// Reserve resource type names up front so refs to #/resources/... can be
	// strongly typed and stable while we build the remaining schema model.
	resourceSpecByToken := map[string]rawResourceSpec{}
	for token, resource := range rawSpec.Resources {
		resourceSpecByToken[token] = resource
	}
	if rawSpec.Provider != nil {
		providerToken := strings.TrimSpace(rawSpec.Provider.Token)
		if providerToken == "" {
			providerToken = fmt.Sprintf("pulumi:providers:%s", rawSpec.Name)
		}
		provider := *rawSpec.Provider
		provider.IsProvider = true
		if existing, ok := resourceSpecByToken[providerToken]; ok {
			existing.IsProvider = true
			existing.RequiredInputs = appendDistinctStringSet(existing.RequiredInputs, provider.RequiredInputs)
			existing.InputProperties = mergeRawPropertySpecs(existing.InputProperties, provider.InputProperties)
			existing.Properties = mergeRawPropertySpecs(existing.Properties, provider.Properties)
			existing.Methods = mergeRawMethods(existing.Methods, provider.Methods)
			resourceSpecByToken[providerToken] = existing
		} else {
			resourceSpecByToken[providerToken] = provider
		}
	}
	resourceTokens := make([]string, 0, len(resourceSpecByToken))
	for token := range resourceSpecByToken {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedClassNamesByModule, modulePath))
		namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "resource",
			Name:             className,
			CanonicalName:    canonicalTypeName(tokenElementName(token)),
			UnderlyingType:   "dynamic",
			UseReferenceType: true,
		}
	}

	for _, token := range typeTokens {
		typeSpec := rawSpec.Types[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch namedType.Kind {
		case "enum":
			if enumSpec := makeRawEnumSpec(namedType.Name, tokenModulePath(token), typeSpec); enumSpec != nil {
				enumSpec.CanonicalName = namedType.CanonicalName
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case "object":
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildRawObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				typeSpec.Description,
				typeSpec.Properties,
				typeSpec.Required,
				namedTypeRefs,
				true,
				false,
				externalRefs,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	if len(rawSpec.Config.Variables) > 0 {
		configClassName := uniqueClassName(
			toDartClassName(rawSpec.Name)+"Config",
			moduleScopedTypeNameSet(usedClassNamesByModule, "config"),
		)
		if configClass := buildRawObjectClassSpec(
			configClassName,
			"config",
			rawSpec.Config.Description,
			rawSpec.Config.Variables,
			rawSpec.Config.Required,
			namedTypeRefs,
			true,
			false,
			externalRefs,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	for _, token := range resourceTokens {
		resource := resourceSpecByToken[token]
		resourceBaseName := resourceTypeBaseNameFromToken(token)
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			IsProvider:  isProviderResourceToken(token) || resource.IsProvider,
			Comment:     strings.TrimSpace(resource.Description),
		}
		if classSpec := makeRawObjectClassSpec(
			resourceBaseName,
			tokenModulePath(token),
			fmt.Sprintf("The set of arguments for %s.", resourceBaseName),
			resource.InputProperties,
			resource.RequiredInputs,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
			namedTypeRefs,
			true,
			true,
			externalRefs,
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}
		if resource.StateInputs != nil {
			stateProperties, stateRequired := rawObjectSpecPropertiesWithoutSelf(
				resource.StateInputs.Properties,
				resource.StateInputs.Required,
			)
			if classSpec := makeRawObjectClassSpec(
				resourceBaseName,
				tokenModulePath(token),
				fmt.Sprintf("Input properties used for looking up and filtering %s resources.", resourceBaseName),
				stateProperties,
				stateRequired,
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				namedTypeRefs,
				true,
				true,
				externalRefs,
				"State",
				"ResourceState",
			); classSpec != nil {
				classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "State")
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
				resourceSpec.StateClass = classSpec.ClassName
			}
		}

		methodNames := make([]string, 0, len(resource.Methods))
		for methodName := range resource.Methods {
			methodNames = append(methodNames, methodName)
		}
		sort.Strings(methodNames)
		methodSpecs := make([]packageResourceMethodSpec, 0, len(methodNames))
		for _, methodName := range methodNames {
			methodToken := strings.TrimSpace(resource.Methods[methodName])
			method := packageResourceMethodSpec{
				Name:  methodName,
				Token: methodToken,
			}
			function, hasFunction := rawSpec.Functions[methodToken]
			if hasFunction {
				method.Comment = strings.TrimSpace(function.Description)
			}

			methodBaseName := resourceBaseName + toDartClassName(methodName)
			if method.Name == "" {
				method.Name = tokenElementName(method.Token)
				if method.Name == "" {
					method.Name = "invoke"
				}
				methodBaseName = resourceBaseName + toDartClassName(method.Name)
			}

			if hasFunction && function.Inputs != nil {
				inputProperties, inputRequired := rawObjectSpecPropertiesWithoutSelf(
					function.Inputs.Properties,
					function.Inputs.Required,
				)
				if classSpec := makeRawObjectClassSpec(
					methodBaseName,
					tokenModulePath(token),
					fmt.Sprintf("Arguments for %s.%s.", resourceBaseName, method.Name),
					inputProperties,
					inputRequired,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					namedTypeRefs,
					true,
					true,
					externalRefs,
					"Args",
					"MethodArgs",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(method.Name), "Args")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					method.ArgsClass = classSpec.ClassName
				}
			}

			if hasFunction && function.Outputs != nil {
				if classSpec := makeRawObjectClassSpec(
					methodBaseName,
					tokenModulePath(token),
					fmt.Sprintf("Result data returned by %s.%s.", resourceBaseName, method.Name),
					function.Outputs.Properties,
					function.Outputs.Required,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					namedTypeRefs,
					true,
					false,
					externalRefs,
					"Result",
					"MethodResult",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(method.Name), "Result")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					method.ResultClass = classSpec.ClassName
				}
				method.HasReturn = true
			}

			methodSpecs = append(methodSpecs, method)
		}
		resourceSpec.Methods = methodSpecs
		resourceSpec.OutputProperties = makeRawResourceOutputPropertySpecs(resource, namedTypeRefs, externalRefs)
		spec.Resources[token] = resourceSpec
	}

	functionTokens := make([]string, 0, len(rawSpec.Functions))
	for token := range rawSpec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)

	for _, token := range functionTokens {
		function := rawSpec.Functions[token]
		var inputProperties map[string]rawPropertyTypeSpec
		var inputRequired []string
		if function.Inputs != nil {
			inputProperties = function.Inputs.Properties
			inputRequired = function.Inputs.Required
		}
		var outputProperties map[string]rawPropertyTypeSpec
		var outputRequired []string
		if function.Outputs != nil {
			outputProperties = function.Outputs.Properties
			outputRequired = function.Outputs.Required
		}

		functionSpec := packageFunctionSpec{
			Comment: strings.TrimSpace(function.Description),
			HasArgs: len(inputProperties) > 0,
		}
		base := toDartClassName(tokenElementName(token))
		if classSpec := makeRawObjectClassSpec(
			base,
			tokenModulePath(token),
			fmt.Sprintf("Arguments for %s.", functionNameFromToken(token, map[string]int{})),
			inputProperties,
			inputRequired,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
			namedTypeRefs,
			true,
			true,
			externalRefs,
			"Args",
			"InvokeArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ArgsClass = classSpec.ClassName
		}
		if classSpec := makeRawObjectClassSpec(
			base,
			tokenModulePath(token),
			fmt.Sprintf("Result data returned by %s.", functionNameFromToken(token, map[string]int{})),
			outputProperties,
			outputRequired,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
			namedTypeRefs,
			true,
			false,
			externalRefs,
			"Result",
			"InvokeResult",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Result")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ResultClass = classSpec.ClassName
		}
		spec.Functions[token] = functionSpec
	}

	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec, nil
}

func uniqueClassName(base string, used map[string]int) string {
	return claimUniqueTypeName(base, used)
}

func lowerCamelIdentifier(name string) string {
	if name == "" {
		return ""
	}
	runes := []rune(name)
	if runes[0] >= 'A' && runes[0] <= 'Z' {
		runes[0] = runes[0] - 'A' + 'a'
	}
	return string(runes)
}

func sanitizeCallableIdentifier(name string) string {
	if name == "" {
		return "invoke"
	}
	name = lowerCamelIdentifier(name)
	if _, reserved := dartReservedIdentifiers[name]; reserved {
		return name + "_"
	}
	return name
}

func modulePathQualifierForName(modulePath, baseName string) string {
	normalized := normalizedModulePath(modulePath)
	if normalized == "" {
		return ""
	}

	baseToken := toSnakeCaseIdentifier(baseName)
	parts := strings.Split(normalized, "/")
	var b strings.Builder
	for _, part := range parts {
		if part == "" || part == "index" {
			continue
		}
		if baseToken != "" && part == baseToken {
			continue
		}
		b.WriteString(toDartClassName(part))
	}
	return b.String()
}

func removeLeadingRunes(value string, count int) string {
	if count <= 0 {
		return value
	}

	for count > 0 && value != "" {
		_, size := utf8.DecodeRuneInString(value)
		if size == 0 {
			return ""
		}
		value = value[size:]
		count--
	}
	return value
}

func stripRedundantModulePrefix(baseName, modulePath string) string {
	baseName = strings.TrimSpace(baseName)
	if baseName == "" {
		return ""
	}

	base := toDartClassName(baseName)
	if base == "" {
		return baseName
	}

	normalized := normalizedModulePath(modulePath)
	if normalized == "" || normalized == "index" {
		return base
	}

	parts := strings.Split(normalized, "/")
	if len(parts) <= 1 {
		return base
	}

	for i := 1; i < len(parts); i++ {
		segment := toDartClassName(parts[i])
		if segment == "" {
			continue
		}
		if !strings.HasPrefix(base, segment) {
			if !strings.HasPrefix(strings.ToLower(base), strings.ToLower(segment)) {
				continue
			}

			tail := removeLeadingRunes(base, utf8.RuneCountInString(segment))
			tailRune, _ := utf8.DecodeRuneInString(tail)
			if tail == "" {
				continue
			}
			if !unicode.IsUpper(tailRune) {
				if unicode.IsDigit(tailRune) {
					return tail
				}
				continue
			}

			return tail
		}

		tail := strings.TrimPrefix(base, segment)
		if tail == "" {
			continue
		}

		tailRune, _ := utf8.DecodeRuneInString(tail)
		if !unicode.IsUpper(tailRune) {
			if unicode.IsDigit(tailRune) {
				return tail
			}
			continue
		}

		return tail
	}

	return base
}

func typeNameCandidates(baseName, modulePath string, suffixes ...string) []string {
	base := stripRedundantModulePrefix(baseName, modulePath)
	if base == "" {
		base = "GeneratedType"
	}
	qualifier := modulePathQualifierForName(modulePath, base)

	if len(suffixes) == 0 {
		suffixes = []string{""}
	}

	seen := map[string]struct{}{}
	candidates := make([]string, 0, len(suffixes)*2+2)
	add := func(candidate string) {
		candidate = sanitizeTypeName(candidate)
		if candidate == "" {
			return
		}
		if _, exists := seen[candidate]; exists {
			return
		}
		seen[candidate] = struct{}{}
		candidates = append(candidates, candidate)
	}

	for _, suffix := range suffixes {
		add(base + suffix)
		if qualifier != "" {
			add(base + qualifier + suffix)
		}
	}

	if len(candidates) == 0 {
		candidates = append(candidates, "GeneratedType")
	}
	return candidates
}

func claimUniqueTypeNameFromCandidates(candidates []string, used map[string]int) string {
	for _, candidate := range candidates {
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
	if len(candidates) == 0 {
		return claimUniqueTypeName("GeneratedType", used)
	}
	return claimUniqueTypeName(candidates[0], used)
}

func uniqueQualifiedClassName(baseName, modulePath string, used map[string]int, suffixes ...string) string {
	return claimUniqueTypeNameFromCandidates(typeNameCandidates(baseName, modulePath, suffixes...), used)
}

func moduleScopedTypeNameSet(usedByModule map[string]map[string]int, modulePath string) map[string]int {
	key := moduleScopeKey(modulePath)
	used, ok := usedByModule[key]
	if !ok {
		used = map[string]int{}
		usedByModule[key] = used
	}
	return used
}

func moduleScopedIdentifierSet(usedByModule map[string]map[string]int, modulePath string) map[string]int {
	key := moduleScopeKey(modulePath)
	used, ok := usedByModule[key]
	if !ok {
		used = map[string]int{}
		usedByModule[key] = used
	}
	return used
}

func moduleScopeKey(modulePath string) string {
	key := normalizedModulePath(modulePath)
	if key == "" {
		return ""
	}
	if idx := strings.Index(key, "/"); idx >= 0 {
		return key[:idx]
	}
	return key
}

func canonicalTypeName(baseName string, suffixes ...string) string {
	base := toDartClassName(baseName)
	if base == "" {
		base = "GeneratedType"
	}
	if len(suffixes) == 0 {
		return sanitizeTypeName(base)
	}
	var b strings.Builder
	b.WriteString(base)
	for _, suffix := range suffixes {
		b.WriteString(suffix)
	}
	return sanitizeTypeName(b.String())
}

func claimUniqueIdentifierFromCandidates(candidates []string, used map[string]int) string {
	normalizedCandidates := make([]string, 0, len(candidates))
	for _, candidate := range candidates {
		candidate = sanitizeCallableIdentifier(candidate)
		if candidate == "" {
			continue
		}
		normalizedCandidates = append(normalizedCandidates, candidate)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
	if len(normalizedCandidates) == 0 {
		normalizedCandidates = append(normalizedCandidates, "invoke")
	}
	base := normalizedCandidates[0]
	for suffix := 2; ; suffix++ {
		candidate := fmt.Sprintf("%s%d", base, suffix)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
}

var dartReservedIdentifiers = map[string]struct{}{
	"assert": {}, "break": {}, "case": {}, "catch": {}, "class": {}, "const": {}, "continue": {},
	"default": {}, "do": {}, "else": {}, "enum": {}, "extends": {}, "false": {}, "final": {},
	"finally": {}, "for": {}, "if": {}, "in": {}, "is": {}, "new": {}, "null": {}, "rethrow": {},
	"return": {}, "super": {}, "switch": {}, "this": {}, "throw": {}, "true": {}, "try": {},
	"var": {}, "void": {}, "while": {}, "with": {},
}

var dartDisallowedFieldNames = map[string]struct{}{
	"runtimeType":  {},
	"hashCode":     {},
	"toString":     {},
	"noSuchMethod": {},
	"toMap":        {},
	"fromMap":      {},
}

var dartDisallowedTypeNames = map[string]struct{}{
	"ComponentResource":     {},
	"CustomResource":        {},
	"CustomResourceOptions": {},
	"Deployment":            {},
	"Function":              {},
	"Input":                 {},
	"InputArgs":             {},
	"InvokeOptions":         {},
	"List":                  {},
	"Map":                   {},
	"Output":                {},
	"Resource":              {},
	"ResourceOptions":       {},
	"Set":                   {},
}

func sanitizeTypeName(name string) string {
	if name == "" {
		return "GeneratedType"
	}
	if _, disallowed := dartDisallowedTypeNames[name]; disallowed {
		return name + "Type"
	}
	return name
}

func claimUniqueTypeName(base string, used map[string]int) string {
	if base == "" {
		base = "GeneratedType"
	}
	base = sanitizeTypeName(base)

	if _, exists := used[base]; !exists {
		used[base] = 1
		return base
	}

	stem := base
	start := 2
	for i := len(base) - 1; i >= 0; i-- {
		if base[i] < '0' || base[i] > '9' {
			if i < len(base)-1 {
				parsed, err := strconv.Atoi(base[i+1:])
				if err == nil && parsed >= 1 {
					start = parsed + 1
					stem = base[:i+1]
				}
			}
			break
		}
		if i == 0 {
			stem = base
			start = 2
		}
	}

	for suffix := start; ; suffix++ {
		candidate := fmt.Sprintf("%s%d", stem, suffix)
		if _, exists := used[candidate]; !exists {
			used[candidate] = 1
			return candidate
		}
	}
}

func propertyFieldName(name string, used map[string]int) string {
	candidate := toDartClassName(name)
	if candidate == "" {
		candidate = "value"
	}
	runes := []rune(candidate)
	if len(runes) > 0 && runes[0] >= 'A' && runes[0] <= 'Z' {
		runes[0] = runes[0] - 'A' + 'a'
	}
	candidate = string(runes)
	if _, reserved := dartReservedIdentifiers[candidate]; reserved {
		candidate += "_"
	}
	if _, disallowed := dartDisallowedFieldNames[candidate]; disallowed {
		candidate += "_"
	}
	count := used[candidate]
	used[candidate] = count + 1
	if count == 0 {
		return candidate
	}
	return fmt.Sprintf("%s%d", candidate, count+1)
}

func dartTypeSpecFromSchemaType(
	typ schema.Type,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	currentProvider string,
) packageTypeSpec {
	for {
		switch t := typ.(type) {
		case *schema.OptionalType:
			typ = t.ElementType
		case *schema.InputType:
			typ = t.ElementType
		default:
			goto resolved
		}
	}

resolved:
	switch t := typ.(type) {
	case nil:
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.ArrayType:
		elementType := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes, currentProvider)
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementType.DartType),
			ElementType: &elementType,
		}
	case *schema.MapType:
		valueType := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes, currentProvider)
		return packageTypeSpec{
			Kind:        "map",
			DartType:    fmt.Sprintf("Map<String, %s>", valueType.DartType),
			ElementType: &valueType,
		}
	case *schema.UnionType:
		if t.DefaultType != nil {
			return dartTypeSpecFromSchemaType(t.DefaultType, namedTypeRefs, useReferenceTypes, currentProvider)
		}
		for _, elementType := range t.ElementTypes {
			candidate := dartTypeSpecFromSchemaType(elementType, namedTypeRefs, useReferenceTypes, currentProvider)
			if candidate.DartType != "dynamic" {
				return candidate
			}
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.EnumType:
		if namedTypeRefs != nil {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if !namedType.UseReferenceType {
					return makePackageTypeSpec("scalar", namedType.UnderlyingType)
				}
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              namedType.Kind,
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"enum",
			dartTypeSpecFromSchemaType(t.ElementType, nil, false, currentProvider).DartType,
			true,
			useReferenceTypes,
		); ok {
			return externalSpec
		}
		return dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes, currentProvider)
	case *schema.TokenType:
		if namedTypeRefs != nil {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
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
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"object",
			"Map<String, dynamic>",
			true,
			useReferenceTypes,
		); ok {
			if t.UnderlyingType != nil {
				if underlying := dartTypeSpecFromSchemaType(t.UnderlyingType, namedTypeRefs, useReferenceTypes, currentProvider); underlying.Kind == "enum" {
					externalSpec.Kind = "enum"
					externalSpec.ReferenceWireType = underlying.ReferenceWireType
				}
			}
			return externalSpec
		}
		if t.UnderlyingType != nil {
			return dartTypeSpecFromSchemaType(t.UnderlyingType, namedTypeRefs, useReferenceTypes, currentProvider)
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	case *schema.ObjectType:
		if namedTypeRefs != nil && t.Token != "" {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if namedType.Kind == "object" && !namedType.UseReferenceType {
					return makePackageTypeSpec("object", "Map<String, dynamic>")
				}
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              namedType.Kind,
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: namedType.UnderlyingType,
					}
				}
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"object",
			"Map<String, dynamic>",
			len(t.Properties) > 0,
			useReferenceTypes,
		); ok {
			return externalSpec
		}
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	case *schema.ResourceType:
		if namedTypeRefs != nil && t.Token != "" {
			if namedType, ok := namedTypeRefs[t.Token]; ok {
				if useReferenceTypes {
					return packageTypeSpec{
						Kind:              "resource",
						DartType:          namedType.Name,
						ReferenceType:     namedType.Name,
						ReferenceWireType: "dynamic",
					}
				}
			}
		}
		if externalSpec, ok := externalTokenTypeSpec(
			t.Token,
			currentProvider,
			"resource",
			"",
			true,
			useReferenceTypes,
		); ok {
			return externalSpec
		}
		return makePackageTypeSpec("dynamic", "dynamic")
	}

	switch typ {
	case schema.BoolType:
		return makePackageTypeSpec("scalar", "bool")
	case schema.IntType:
		return makePackageTypeSpec("scalar", "int")
	case schema.NumberType:
		return makePackageTypeSpec("scalar", "double")
	case schema.StringType:
		return makePackageTypeSpec("scalar", "String")
	case schema.AssetType, schema.ArchiveType, schema.AnyResourceType, schema.JSONType, schema.AnyType:
		return makePackageTypeSpec("dynamic", "dynamic")
	default:
		return makePackageTypeSpec("dynamic", "dynamic")
	}
}

func makeObjectClassSpec(
	baseName string,
	modulePath string,
	classComment string,
	properties []*schema.Property,
	usedClassNames map[string]int,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	currentProvider string,
	nameSuffixes ...string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	className := uniqueQualifiedClassName(baseName, modulePath, usedClassNames, nameSuffixes...)
	return buildObjectClassSpec(
		className,
		modulePath,
		classComment,
		properties,
		namedTypeRefs,
		useReferenceTypes,
		usesInputTypes,
		currentProvider,
	)
}

func buildObjectClassSpec(
	className string,
	modulePath string,
	classComment string,
	properties []*schema.Property,
	namedTypeRefs map[string]packageNamedTypeRef,
	useReferenceTypes bool,
	usesInputTypes bool,
	currentProvider string,
) *packageObjectClassSpec {
	if len(properties) == 0 {
		return nil
	}

	props := make([]*schema.Property, len(properties))
	copy(props, properties)
	sort.Slice(props, func(i, j int) bool {
		return props[i].Name < props[j].Name
	})

	usedFieldNames := map[string]int{}
	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		typeSpec := dartTypeSpecFromSchemaType(
			property.Type,
			namedTypeRefs,
			useReferenceTypes,
			currentProvider,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              property.Name,
			FieldName:         propertyFieldName(property.Name, usedFieldNames),
			Comment:           strings.TrimSpace(property.Comment),
			Required:          property.IsRequired(),
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

func makeResourceOutputPropertySpecs(
	resource *schema.Resource,
	namedTypeRefs map[string]packageNamedTypeRef,
	currentProvider string,
) []packagePropertySpec {
	if len(resource.Properties) == 0 {
		return nil
	}

	props := make([]*schema.Property, len(resource.Properties))
	copy(props, resource.Properties)
	sort.Slice(props, func(i, j int) bool {
		return props[i].Name < props[j].Name
	})

	usedFieldNames := map[string]int{
		"urn": 1,
	}
	if !resource.IsComponent {
		usedFieldNames["id"] = 1
	}

	fields := make([]packagePropertySpec, 0, len(props))
	for _, property := range props {
		if property.Name == "urn" {
			continue
		}
		if !resource.IsComponent && property.Name == "id" {
			continue
		}

		typeSpec := dartTypeSpecFromSchemaType(
			property.Type,
			namedTypeRefs,
			true,
			currentProvider,
		)
		referenceKind, referenceType, referenceWireType := directReferenceInfo(typeSpec)
		fields = append(fields, packagePropertySpec{
			Name:              property.Name,
			FieldName:         propertyFieldName(property.Name, usedFieldNames),
			Comment:           strings.TrimSpace(property.Comment),
			Required:          property.IsRequired(),
			TypeSpec:          typeSpec,
			DartType:          typeSpec.DartType,
			ReferenceKind:     referenceKind,
			ReferenceType:     referenceType,
			ReferenceWireType: referenceWireType,
		})
	}

	if len(fields) == 0 {
		return nil
	}
	return fields
}

func makeSchemaEnumSpec(typeName string, modulePath string, enumType *schema.EnumType, currentProvider string) *packageEnumSpec {
	if enumType == nil || len(enumType.Elements) == 0 {
		return nil
	}

	underlyingType := dartTypeSpecFromSchemaType(enumType.ElementType, nil, false, currentProvider).DartType
	values := make([]packageEnumValueSpec, 0, len(enumType.Elements))
	usedValueNames := map[string]int{}
	for _, enumValue := range enumType.Elements {
		literal, ok := dartEnumLiteral(enumValue.Value, underlyingType)
		if !ok {
			return nil
		}
		values = append(values, packageEnumValueSpec{
			Name:    enumValueName(enumValue.Name, enumValue.Value, usedValueNames),
			Literal: literal,
		})
	}
	if len(values) == 0 {
		return nil
	}

	return &packageEnumSpec{
		EnumName:       typeName,
		ModulePath:     modulePath,
		Comment:        strings.TrimSpace(enumType.Comment),
		UnderlyingType: underlyingType,
		Values:         values,
	}
}

func packageSchemaFromPackage(pkg *schema.Package) *packageSchema {
	version := ""
	if pkg.Version != nil {
		version = pkg.Version.String()
	}

	spec := &packageSchema{
		Name:             pkg.Name,
		Namespace:        pkg.Namespace,
		Version:          version,
		Description:      strings.TrimSpace(pkg.Description),
		License:          strings.TrimSpace(pkg.License),
		Homepage:         strings.TrimSpace(pkg.Homepage),
		Repository:       strings.TrimSpace(pkg.Repository),
		Keywords:         append([]string(nil), pkg.Keywords...),
		Parameterization: nil,
		Resources:        map[string]packageResourceSpec{},
		Functions:        map[string]packageFunctionSpec{},
		Config:           nil,
		Enums:            []packageEnumSpec{},
		ObjectClasses:    []packageObjectClassSpec{},
	}

	if pkg.Parameterization != nil {
		pluginVersion := pkg.Parameterization.BaseProvider.Version.String()
		packageVersion := version
		if packageVersion == "" {
			packageVersion = pluginVersion
		}
		if pluginVersion == "" {
			pluginVersion = packageVersion
		}
		if pluginVersion == "" {
			pluginVersion = "0.0.1"
		}
		if packageVersion == "" {
			packageVersion = pluginVersion
		}

		spec.Parameterization = &packageParameterizationSpec{
			PluginName:     pkg.Parameterization.BaseProvider.Name,
			PluginVersion:  pluginVersion,
			PackageName:    pkg.Name,
			PackageVersion: packageVersion,
			DownloadURL:    pkg.PluginDownloadURL,
			Value:          append([]byte(nil), pkg.Parameterization.Parameter...),
		}
	}

	usedClassNamesByModule := map[string]map[string]int{}
	namedTypeRefs := map[string]packageNamedTypeRef{}

	typeTokens := make([]string, 0, len(pkg.Types))
	typesByToken := map[string]schema.Type{}
	for _, typ := range pkg.Types {
		switch t := typ.(type) {
		case *schema.EnumType:
			if t.Token == "" {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		case *schema.ObjectType:
			if t.Token == "" || t.IsInputShape() {
				continue
			}
			if _, exists := typesByToken[t.Token]; !exists {
				typeTokens = append(typeTokens, t.Token)
			}
			typesByToken[t.Token] = typ
		}
	}
	sort.Strings(typeTokens)

	for _, token := range typeTokens {
		typ := typesByToken[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		switch t := typ.(type) {
		case *schema.EnumType:
			typeName := uniqueQualifiedClassName(
				tokenElementName(token),
				tokenModulePath(token),
				moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
				"",
				"Enum",
			)
			underlyingType := dartTypeSpecFromSchemaType(t.ElementType, nil, false, pkg.Name).DartType
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   underlyingType,
				UseReferenceType: true,
			}
		case *schema.ObjectType:
			typeName := ""
			useReferenceType := false
			if len(t.Properties) > 0 {
				typeName = uniqueQualifiedClassName(
					tokenElementName(token),
					tokenModulePath(token),
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(token)),
					"",
					"Type",
				)
				useReferenceType = true
			}
			namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "object",
				Name:             typeName,
				CanonicalName:    canonicalName,
				UnderlyingType:   "Map<String, dynamic>",
				UseReferenceType: useReferenceType,
			}
		}
	}

	for _, token := range typeTokens {
		typ := typesByToken[token]
		namedType, ok := namedTypeRefs[token]
		if !ok {
			continue
		}

		switch t := typ.(type) {
		case *schema.EnumType:
			if enumSpec := makeSchemaEnumSpec(namedType.Name, tokenModulePath(token), t, pkg.Name); enumSpec != nil {
				enumSpec.CanonicalName = namedType.CanonicalName
				spec.Enums = append(spec.Enums, *enumSpec)
			}
		case *schema.ObjectType:
			if !namedType.UseReferenceType {
				continue
			}
			if classSpec := buildObjectClassSpec(
				namedType.Name,
				tokenModulePath(token),
				t.Comment,
				t.Properties,
				namedTypeRefs,
				true,
				true,
				pkg.Name,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
		}
	}

	// Section: schema-bound resource ref typing
	//
	// BindSpec can still surface resource refs in property types. Reserve their
	// generated class names here so token refs stay strongly typed.
	reservedResourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		if resource == nil || resource.Token == "" {
			continue
		}
		reservedResourceTokens = append(reservedResourceTokens, resource.Token)
	}
	sort.Strings(reservedResourceTokens)
	for _, token := range reservedResourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(token, moduleScopedTypeNameSet(usedClassNamesByModule, modulePath))
		namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "resource",
			Name:             className,
			CanonicalName:    canonicalTypeName(tokenElementName(token)),
			UnderlyingType:   "dynamic",
			UseReferenceType: true,
		}
	}

	if len(pkg.Config) > 0 {
		configClassName := uniqueClassName(
			toDartClassName(pkg.Name)+"Config",
			moduleScopedTypeNameSet(usedClassNamesByModule, "config"),
		)
		if configClass := buildObjectClassSpec(
			configClassName,
			"config",
			fmt.Sprintf("Configuration values for the %s package.", pkg.Name),
			pkg.Config,
			namedTypeRefs,
			true,
			false,
			pkg.Name,
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	resourceByToken := map[string]*schema.Resource{}
	resourceTokens := make([]string, 0, len(pkg.Resources))
	for _, resource := range pkg.Resources {
		resourceByToken[resource.Token] = resource
		resourceTokens = append(resourceTokens, resource.Token)
	}
	if pkg.Provider != nil {
		providerToken := strings.TrimSpace(pkg.Provider.Token)
		if providerToken == "" {
			providerToken = fmt.Sprintf("pulumi:providers:%s", pkg.Name)
		}
		if _, exists := resourceByToken[providerToken]; !exists {
			resourceByToken[providerToken] = pkg.Provider
			resourceTokens = append(resourceTokens, providerToken)
		}
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		resource := resourceByToken[token]
		resourceBaseName := resourceTypeBaseNameFromToken(resource.Token)
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
			IsProvider:  isProviderResourceToken(resource.Token) || resource.IsProvider,
			Comment:     strings.TrimSpace(resource.Comment),
		}
		if classSpec := makeObjectClassSpec(
			resourceBaseName,
			tokenModulePath(resource.Token),
			fmt.Sprintf("The set of arguments for %s.", resourceBaseName),
			resource.InputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}

		if stateClass := makeObjectClassSpec(
			resourceBaseName,
			tokenModulePath(resource.Token),
			fmt.Sprintf("Input properties used for looking up and filtering %s resources.", resourceBaseName),
			schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(resource.StateInputs)),
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"State",
			"ResourceState",
		); stateClass != nil {
			stateClass.CanonicalName = canonicalTypeName(resourceBaseName, "State")
			spec.ObjectClasses = append(spec.ObjectClasses, *stateClass)
			resourceSpec.StateClass = stateClass.ClassName
		}

		methods := append([]*schema.Method{}, resource.Methods...)
		sort.Slice(methods, func(i, j int) bool {
			left := strings.TrimSpace(methods[i].Name)
			right := strings.TrimSpace(methods[j].Name)
			if left == right {
				leftToken := ""
				rightToken := ""
				if methods[i].Function != nil {
					leftToken = methods[i].Function.Token
				}
				if methods[j].Function != nil {
					rightToken = methods[j].Function.Token
				}
				return leftToken < rightToken
			}
			return left < right
		})
		methodSpecs := make([]packageResourceMethodSpec, 0, len(methods))
		for _, method := range methods {
			if method == nil {
				continue
			}

			methodSpec := packageResourceMethodSpec{
				Name: strings.TrimSpace(method.Name),
			}
			if method.Function != nil {
				methodSpec.Token = strings.TrimSpace(method.Function.Token)
				methodSpec.Comment = strings.TrimSpace(method.Function.Comment)
			}
			if methodSpec.Name == "" {
				methodSpec.Name = tokenElementName(methodSpec.Token)
			}
			if methodSpec.Name == "" {
				methodSpec.Name = "invoke"
			}

			methodBaseName := resourceBaseName + toDartClassName(methodSpec.Name)
			if method.Function != nil {
				inputProperties := schemaPropertiesWithoutSelf(schemaObjectPropertiesFromRef(method.Function.Inputs))
				if classSpec := makeObjectClassSpec(
					methodBaseName,
					tokenModulePath(resource.Token),
					fmt.Sprintf("Arguments for %s.%s.", resourceBaseName, methodSpec.Name),
					inputProperties,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
					namedTypeRefs,
					true,
					true,
					pkg.Name,
					"Args",
					"MethodArgs",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(methodSpec.Name), "Args")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					methodSpec.ArgsClass = classSpec.ClassName
				}

				resultProperties := schemaObjectPropertiesFromRef(method.Function.Outputs)
				if len(resultProperties) == 0 {
					if objectReturn, ok := method.Function.ReturnType.(*schema.ObjectType); ok {
						resultProperties = schemaObjectPropertiesFromRef(objectReturn)
					}
				}
				if classSpec := makeObjectClassSpec(
					methodBaseName,
					tokenModulePath(resource.Token),
					fmt.Sprintf("Result data returned by %s.%s.", resourceBaseName, methodSpec.Name),
					resultProperties,
					moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(resource.Token)),
					namedTypeRefs,
					true,
					false,
					pkg.Name,
					"Result",
					"MethodResult",
				); classSpec != nil {
					classSpec.CanonicalName = canonicalTypeName(resourceBaseName, toDartClassName(methodSpec.Name), "Result")
					spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
					methodSpec.ResultClass = classSpec.ClassName
				}

				methodSpec.HasReturn = method.Function.Outputs != nil || method.Function.ReturnType != nil
			}

			methodSpecs = append(methodSpecs, methodSpec)
		}
		resourceSpec.Methods = methodSpecs
		resourceSpec.OutputProperties = makeResourceOutputPropertySpecs(resource, namedTypeRefs, pkg.Name)
		spec.Resources[resource.Token] = resourceSpec
	}

	functionByToken := map[string]*schema.Function{}
	functionTokens := make([]string, 0, len(pkg.Functions))
	for _, function := range pkg.Functions {
		functionByToken[function.Token] = function
		functionTokens = append(functionTokens, function.Token)
	}
	sort.Strings(functionTokens)

	for _, token := range functionTokens {
		function := functionByToken[token]
		inputProperties := []*schema.Property{}
		if function.Inputs != nil {
			inputProperties = function.Inputs.Properties
		}
		outputProperties := []*schema.Property{}
		if function.Outputs != nil {
			outputProperties = function.Outputs.Properties
		}

		functionSpec := packageFunctionSpec{
			Comment: strings.TrimSpace(function.Comment),
			HasArgs: len(inputProperties) > 0,
		}
		base := toDartClassName(tokenElementName(function.Token))
		if classSpec := makeObjectClassSpec(
			base,
			tokenModulePath(function.Token),
			fmt.Sprintf("Arguments for %s.", functionNameFromToken(function.Token, map[string]int{})),
			inputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(function.Token)),
			namedTypeRefs,
			true,
			true,
			pkg.Name,
			"Args",
			"InvokeArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ArgsClass = classSpec.ClassName
		}
		if classSpec := makeObjectClassSpec(
			base,
			tokenModulePath(function.Token),
			fmt.Sprintf("Result data returned by %s.", functionNameFromToken(function.Token, map[string]int{})),
			outputProperties,
			moduleScopedTypeNameSet(usedClassNamesByModule, tokenModulePath(function.Token)),
			namedTypeRefs,
			true,
			false,
			pkg.Name,
			"Result",
			"InvokeResult",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(base, "Result")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			functionSpec.ResultClass = classSpec.ClassName
		}
		spec.Functions[function.Token] = functionSpec
	}

	sort.Slice(spec.Enums, func(i, j int) bool {
		return spec.Enums[i].EnumName < spec.Enums[j].EnumName
	})
	sort.Slice(spec.ObjectClasses, func(i, j int) bool {
		return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName
	})

	return spec
}

func sanitizeDartIdentifier(value string) string {
	value = strings.ToLower(value)

	var b strings.Builder
	lastWasUnderscore := false
	for _, r := range value {
		isAlpha := r >= 'a' && r <= 'z'
		isDigit := r >= '0' && r <= '9'
		if isAlpha || isDigit {
			if b.Len() == 0 && isDigit {
				b.WriteString("pkg_")
			}
			b.WriteRune(r)
			lastWasUnderscore = false
			continue
		}
		if b.Len() > 0 && !lastWasUnderscore {
			b.WriteRune('_')
			lastWasUnderscore = true
		}
	}

	out := strings.Trim(b.String(), "_")
	if out == "" {
		return "pulumi_package"
	}
	if out[0] >= '0' && out[0] <= '9' {
		return "pkg_" + out
	}
	return out
}

func toDartPackageName(namespace, name string) string {
	base := ""
	if namespace == "" {
		base = sanitizeDartIdentifier(name)
	} else {
		base = sanitizeDartIdentifier(namespace + "_" + name)
	}
	if strings.HasPrefix(base, "pulumi_") {
		return base
	}
	return sanitizeDartIdentifier("pulumi_" + base)
}

func toDartClassName(name string) string {
	parts := strings.FieldsFunc(name, func(r rune) bool {
		return !((r >= 'a' && r <= 'z') || (r >= 'A' && r <= 'Z') || (r >= '0' && r <= '9'))
	})
	if len(parts) == 0 {
		return "Resource"
	}

	var b strings.Builder
	for _, part := range parts {
		if part == "" {
			continue
		}
		head := part[0]
		if head >= 'a' && head <= 'z' {
			part = string(head-'a'+'A') + part[1:]
		}
		b.WriteString(part)
	}

	result := b.String()
	if result == "" {
		return "Resource"
	}
	if result[0] >= '0' && result[0] <= '9' {
		return "Resource" + result
	}
	return result
}

func tokenElementName(token string) string {
	name := token
	if idx := strings.LastIndex(token, ":"); idx >= 0 && idx+1 < len(token) {
		name = token[idx+1:]
	}
	if idx := strings.LastIndex(name, "/"); idx >= 0 && idx+1 < len(name) {
		name = name[idx+1:]
	}
	return name
}

func tokenModulePath(token string) string {
	first := strings.Index(token, ":")
	if first < 0 || first+1 >= len(token) {
		return "index"
	}
	rest := token[first+1:]
	last := strings.LastIndex(rest, ":")
	if last < 0 {
		return "index"
	}
	module := strings.TrimSpace(rest[:last])
	if module == "" {
		return "index"
	}
	return rewriteModulePath(module)
}

func tokenProviderName(token string) string {
	// Provider resource tokens are encoded as pulumi:providers:<pkg>.
	// Treat these as belonging to the target provider package (<pkg>) so they
	// resolve locally instead of incorrectly importing package:pulumi_pulumi.
	if strings.HasPrefix(token, "pulumi:providers:") {
		return canonicalProviderName(tokenElementName(token))
	}

	first := strings.Index(token, ":")
	if first <= 0 {
		return ""
	}
	return canonicalProviderName(token[:first])
}

// Section: schema-bound external token typing
//
// The schema loader path can resolve references without preserving raw `$ref`
// strings. This helper ensures those external tokens still become typed Dart
// symbols with explicit package imports.
func externalTokenTypeSpec(
	token string,
	currentProvider string,
	refKind string,
	wireType string,
	useReferenceType bool,
	useReferenceTypes bool,
) (packageTypeSpec, bool) {
	token = strings.TrimSpace(token)
	if token == "" {
		return packageTypeSpec{}, false
	}

	providerName := tokenProviderName(token)
	if providerName == "" || providerName == canonicalProviderName(currentProvider) {
		return packageTypeSpec{}, false
	}

	if !useReferenceTypes {
		switch refKind {
		case "enum":
			if wireType != "" {
				return makePackageTypeSpec("scalar", wireType), true
			}
			return makePackageTypeSpec("scalar", "String"), true
		case "object":
			return makePackageTypeSpec("object", "Map<String, dynamic>"), true
		case "resource":
			return makePackageTypeSpec("dynamic", "dynamic"), true
		default:
			return makePackageTypeSpec("dynamic", "dynamic"), true
		}
	}

	importPackage := toDartPackageName("", providerName)
	moduleLibrary := moduleLibraryFilePath(tokenModulePath(token))
	importPath := fmt.Sprintf("package:%s/%s", importPackage, moduleLibrary)
	importAlias := sanitizeDartIdentifier(importPackage + "_" + strings.TrimSuffix(moduleLibrary, ".dart"))
	className := canonicalTypeName(tokenElementName(token))
	qualifiedType := fmt.Sprintf("%s.%s", importAlias, className)

	switch refKind {
	case "resource":
		return packageTypeSpec{
			Kind:           "resource",
			DartType:       qualifiedType,
			IsExternalRef:  true,
			ExternalImport: importPath,
			ExternalAlias:  importAlias,
		}, true
	case "enum":
		if wireType == "" {
			wireType = "String"
		}
		return packageTypeSpec{
			Kind:              "enum",
			DartType:          qualifiedType,
			ReferenceType:     qualifiedType,
			ReferenceWireType: wireType,
			IsExternalRef:     true,
			ExternalImport:    importPath,
			ExternalAlias:     importAlias,
		}, true
	case "object":
		if !useReferenceType {
			return makePackageTypeSpec("object", "Map<String, dynamic>"), true
		}
		return packageTypeSpec{
			Kind:              "object",
			DartType:          qualifiedType,
			ReferenceType:     qualifiedType,
			ReferenceWireType: "Map<String, dynamic>",
			IsExternalRef:     true,
			ExternalImport:    importPath,
			ExternalAlias:     importAlias,
		}, true
	default:
		return makePackageTypeSpec("dynamic", "dynamic"), true
	}
}

func rewriteModulePath(module string) string {
	module = strings.TrimSpace(filepath.ToSlash(module))
	if module == "" {
		return "index"
	}

	parts := strings.Split(module, "/")
	cleanParts := make([]string, 0, len(parts)+1)
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		cleanParts = append(cleanParts, part)
	}
	if len(cleanParts) == 0 {
		return "index"
	}

	rewrittenRoot := rewriteModuleRootSegment(cleanParts[0])
	rewrittenParts := make([]string, 0, len(cleanParts)+1)
	for _, rootPart := range strings.Split(rewrittenRoot, "/") {
		rootPart = strings.TrimSpace(rootPart)
		if rootPart == "" {
			continue
		}
		rewrittenParts = append(rewrittenParts, rootPart)
	}
	if len(cleanParts) > 1 {
		rewrittenParts = append(rewrittenParts, cleanParts[1:]...)
	}
	if len(rewrittenParts) == 0 {
		return "index"
	}

	return strings.Join(rewrittenParts, "/")
}

func rewriteModuleRootSegment(module string) string {
	switch module {
	case "s3control":
		return "s3/control"
	case "s3outposts":
		return "s3/outposts"
	case "s3tables":
		return "s3/tables"
	case "route53domains":
		return "route53/domains"
	case "route53recoverycontrol":
		return "route53/recovery_control"
	case "route53recoveryreadiness":
		return "route53/recovery_readiness"
	}

	if strings.HasPrefix(module, "s3") && module != "s3" {
		suffix := strings.TrimPrefix(module, "s3")
		if suffix != "" {
			return "s3/" + suffix
		}
	}
	if strings.HasPrefix(module, "route53") && module != "route53" {
		suffix := strings.TrimPrefix(module, "route53")
		if suffix != "" {
			return "route53/" + suffix
		}
	}

	return module
}

func resourceClassNameFromToken(token string, used map[string]int) string {
	if isProviderResourceToken(token) {
		return uniqueQualifiedClassName("Provider", tokenModulePath(token), used, "Provider", "")
	}

	return uniqueQualifiedClassName(tokenElementName(token), tokenModulePath(token), used, "", "Resource", "Res")
}

func resourceTypeBaseNameFromToken(token string) string {
	if isProviderResourceToken(token) {
		return "Provider"
	}
	return toDartClassName(tokenElementName(token))
}

func isProviderResourceToken(token string) bool {
	return strings.HasPrefix(strings.TrimSpace(token), "pulumi:providers:")
}

func functionNameCandidatesFromToken(token string) []string {
	base := tokenElementName(token)
	if base == "" {
		return []string{"invoke"}
	}

	classLike := toDartClassName(base)
	if classLike == "" {
		classLike = "Invoke"
	}

	moduleQualifier := modulePathQualifierForName(tokenModulePath(token), classLike)

	classCandidates := []string{classLike}
	if strings.HasPrefix(classLike, "Get") && len(classLike) > len("Get") {
		classCandidates = append(classCandidates, "Lookup"+classLike[len("Get"):])
	}
	if strings.HasPrefix(classLike, "New") && len(classLike) > len("New") {
		classCandidates = append(classCandidates, "Create"+classLike[len("New"):])
	}

	candidates := make([]string, 0, len(classCandidates)*2)
	seen := map[string]struct{}{}
	add := func(candidate string) {
		candidate = sanitizeCallableIdentifier(candidate)
		if candidate == "" {
			return
		}
		if _, exists := seen[candidate]; exists {
			return
		}
		seen[candidate] = struct{}{}
		candidates = append(candidates, candidate)
	}
	for _, classCandidate := range classCandidates {
		add(classCandidate)
		if moduleQualifier != "" {
			add(classCandidate + moduleQualifier)
		}
	}
	if len(candidates) == 0 {
		return []string{"invoke"}
	}
	return candidates
}

func canonicalFunctionNameFromToken(token string) string {
	candidates := functionNameCandidatesFromToken(token)
	if len(candidates) == 0 {
		return "invoke"
	}
	return sanitizeCallableIdentifier(candidates[0])
}

func functionNameFromToken(token string, used map[string]int) string {
	return claimUniqueIdentifierFromCandidates(functionNameCandidatesFromToken(token), used)
}

func propertyTypeSpec(property packagePropertySpec) packageTypeSpec {
	if property.TypeSpec.DartType != "" {
		return property.TypeSpec
	}
	if property.DartType != "" {
		kind := "scalar"
		if property.DartType == "dynamic" {
			kind = "dynamic"
		}
		return makePackageTypeSpec(kind, property.DartType)
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func propertyBaseDartType(property packagePropertySpec) string {
	return propertyTypeSpec(property).DartType
}

func nullableDartType(base string, required bool) string {
	if required || base == "dynamic" {
		return base
	}
	return base + "?"
}

func objectClassPropertyDartType(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	base := propertyBaseDartType(property)
	if objectClass.UsesInputTypes {
		typed := fmt.Sprintf("pulumi.Input<%s>", base)
		if property.Required {
			return typed
		}
		return typed + "?"
	}
	return nullableDartType(base, property.Required)
}

func objectClassConstructorPropertyDartType(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	if objectClass.UsesInputTypes {
		base := propertyBaseDartType(property)
		typed := fmt.Sprintf("pulumi.Input<%s>", base)
		if property.Required {
			return typed
		}
		return typed + "?"
	}
	base := propertyBaseDartType(property)
	return nullableDartType(base, property.Required)
}

func typeSpecElement(typeSpec packageTypeSpec) packageTypeSpec {
	if typeSpec.ElementType != nil {
		return *typeSpec.ElementType
	}
	return makePackageTypeSpec("dynamic", "dynamic")
}

func typeSpecNeedsDecodeConversion(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return typeSpecNeedsDecodeConversion(typeSpecElement(typeSpec))
	default:
		return false
	}
}

func typeSpecNeedsEncodeConversion(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "enum":
		return typeSpec.ReferenceType != ""
	case "object":
		return typeSpec.ReferenceType != ""
	case "array", "map":
		return typeSpecNeedsEncodeConversion(typeSpecElement(typeSpec))
	default:
		return false
	}
}

func typeSpecWireDartType(typeSpec packageTypeSpec) string {
	switch typeSpec.Kind {
	case "enum":
		if typeSpec.ReferenceWireType != "" {
			return typeSpec.ReferenceWireType
		}
	case "object":
		if typeSpec.ReferenceType != "" {
			return "Map<String, dynamic>"
		}
		return "Map<String, dynamic>"
	case "array":
		element := typeSpecElement(typeSpec)
		return fmt.Sprintf("List<%s>", typeSpecWireDartType(element))
	case "map":
		element := typeSpecElement(typeSpec)
		return fmt.Sprintf("Map<String, %s>", typeSpecWireDartType(element))
	}
	if typeSpec.DartType != "" {
		return typeSpec.DartType
	}
	return "dynamic"
}

func typeSpecDecodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		return fmt.Sprintf("%s.fromValue(%s as %s)", typeSpec.ReferenceType, sourceExpr, wireType)
	case "object":
		if typeSpec.ReferenceType == "" {
			return fmt.Sprintf("(%s as Map).cast<String, dynamic>()", sourceExpr)
		}
		return fmt.Sprintf("%s.fromMap((%s as Map).cast<String, dynamic>())", typeSpec.ReferenceType, sourceExpr)
	case "array":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.decodeList<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				typeSpecDecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as List).cast<%s>()", sourceExpr, element.DartType)
	case "map":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsDecodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.decodeMapValues<%s>(%s, (value) => %s)",
				element.DartType,
				sourceExpr,
				typeSpecDecodeExpression(element, "value"),
			)
		}
		return fmt.Sprintf("(%s as Map).cast<String, %s>()", sourceExpr, element.DartType)
	case "dynamic":
		return sourceExpr
	default:
		target := typeSpec.DartType
		if target == "" || target == "dynamic" {
			return sourceExpr
		}
		return fmt.Sprintf("%s as %s", sourceExpr, target)
	}
}

func typeSpecEncodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		return fmt.Sprintf("%s.value", sourceExpr)
	case "object":
		if typeSpec.ReferenceType == "" {
			return sourceExpr
		}
		return fmt.Sprintf("%s.toMap()", sourceExpr)
	case "array":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.encodeList<%s, %s>(%s, (value) => %s)",
				element.DartType,
				typeSpecWireDartType(element),
				sourceExpr,
				typeSpecEncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	case "map":
		element := typeSpecElement(typeSpec)
		if typeSpecNeedsEncodeConversion(element) {
			return fmt.Sprintf(
				"pulumi.Input.encodeMapValues<%s, %s>(%s, (value) => %s)",
				element.DartType,
				typeSpecWireDartType(element),
				sourceExpr,
				typeSpecEncodeExpression(element, "value"),
			)
		}
		return sourceExpr
	default:
		return sourceExpr
	}
}

func typeSpecNeedsDecodeListHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeConversion(element) || typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsDecodeMapHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeConversion(element) || typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsDecodeListHelper(element) || typeSpecNeedsDecodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsEncodeListHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeConversion(element) || typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	default:
		return false
	}
}

func typeSpecNeedsEncodeMapHelper(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "map":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeConversion(element) || typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	case "array":
		element := typeSpecElement(typeSpec)
		return typeSpecNeedsEncodeListHelper(element) || typeSpecNeedsEncodeMapHelper(element)
	default:
		return false
	}
}

func objectClassFromMapExpression(objectClass packageObjectClassSpec, property packagePropertySpec) string {
	sourceExpr := fmt.Sprintf("map[%s]", dartStringLiteral(property.Name))
	typeSpec := propertyTypeSpec(property)
	decodedExpr := typeSpecDecodeExpression(typeSpec, sourceExpr)
	if objectClass.UsesInputTypes {
		if property.Required {
			return fmt.Sprintf("(%s).input()", decodedExpr)
		}
		return fmt.Sprintf("%s == null ? null : (%s).input()", sourceExpr, decodedExpr)
	}
	if property.Required {
		return decodedExpr
	}
	return fmt.Sprintf("%s == null ? null : %s", sourceExpr, decodedExpr)
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
			return fmt.Sprintf(
				"%s == null ? null : %s",
				sourceExpr,
				typeSpecEncodeExpression(typeSpec, sourceExpr+"!"),
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
		return fmt.Sprintf(
			"%s == null ? null : %s",
			rawExpr,
			typeSpecDecodeExpression(typeSpec, fmt.Sprintf("jsonDecode(%s)", rawExpr)),
		)
	}

	if typeSpec.Kind == "enum" {
		wireType := typeSpec.ReferenceWireType
		if wireType == "" {
			wireType = "String"
		}
		parseWire := rawExpr
		switch wireType {
		case "int":
			parseWire = fmt.Sprintf("(%s).toInt()", rawExpr)
		case "double":
			parseWire = fmt.Sprintf("(%s).toDouble()", rawExpr)
		case "bool":
			parseWire = fmt.Sprintf("(%s).toBool()", rawExpr)
		}
		return fmt.Sprintf(
			"%s == null ? null : %s.fromValue(%s as %s)",
			parseWire,
			typeSpec.ReferenceType,
			parseWire,
			wireType,
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

func writeGeneratedConfigClass(b *strings.Builder, configSpec packageConfigSpec) {
	writeDartDocComment(b, "", configSpec.Comment)
	fmt.Fprintf(b, "class %s {\n", configSpec.ClassName)
	fmt.Fprintf(b, "  const %s();\n\n", configSpec.ClassName)
	b.WriteString(
		"  String? _raw(String key) {\n" +
			"    final deployment = pulumi.Deployment.instance;\n" +
			"    return deployment.getConfig(key);\n" +
			"  }\n\n",
	)
	b.WriteString(
		"  bool _isSecret(String key) {\n" +
			"    final deployment = pulumi.Deployment.instance;\n" +
			"    return deployment.isConfigSecret(key);\n" +
			"  }\n\n",
	)

	for _, property := range configSpec.Properties {
		writeDartDocComment(b, "  ", property.Comment)
		getterType := configPropertyGetterType(property)
		fmt.Fprintf(b, "  %s get %s {\n", getterType, property.FieldName)
		fmt.Fprintf(b, "    final raw = _raw(%s);\n", dartStringLiteral(property.Name))
		fmt.Fprintf(b, "    return %s;\n", configPropertyParseExpression(property, "raw"))
		b.WriteString("  }\n\n")

		if property.Required {
			methodName := "require" + toDartClassName(property.FieldName)
			returnType := propertyBaseDartType(property)
			fmt.Fprintf(b, "  %s %s() {\n", returnType, methodName)
			fmt.Fprintf(b, "    final value = %s;\n", property.FieldName)
			fmt.Fprintf(
				b,
				"    if (value == null) {\n      throw ArgumentError(\"Missing required config value %s.\");\n    }\n",
				dartStringLiteral(property.Name),
			)
			b.WriteString("    return value;\n")
			b.WriteString("  }\n\n")
		}

		fmt.Fprintf(b, "  bool get %sIsSecret => _isSecret(%s);\n\n", property.FieldName, dartStringLiteral(property.Name))
	}

	b.WriteString("}\n\n")
	b.WriteString(fmt.Sprintf("final config = %s();\n\n", configSpec.ClassName))
}

func writeGeneratedEnumClass(b *strings.Builder, enumSpec packageEnumSpec) {
	writeDartDocComment(b, "", enumSpec.Comment)
	fmt.Fprintf(b, "enum %s {\n", enumSpec.EnumName)
	for i, enumValue := range enumSpec.Values {
		suffix := ","
		if i == len(enumSpec.Values)-1 {
			suffix = ";"
		}
		writeDartDocComment(b, "  ", enumValue.Comment)
		fmt.Fprintf(b, "  %s(%s)%s\n", enumValue.Name, enumValue.Literal, suffix)
	}
	b.WriteString("\n")
	fmt.Fprintf(b, "  const %s(this.value);\n", enumSpec.EnumName)
	fmt.Fprintf(b, "  final %s value;\n\n", enumSpec.UnderlyingType)
	fmt.Fprintf(
		b,
		"  static %s fromValue(%s value) {\n    for (final item in %s.values) {\n      if (item.value == value) {\n        return item;\n      }\n    }\n    throw ArgumentError('Unknown %s value: $value');\n  }\n",
		enumSpec.EnumName,
		enumSpec.UnderlyingType,
		enumSpec.EnumName,
		enumSpec.EnumName,
	)
	b.WriteString("}\n\n")
}

func writeGeneratedObjectClass(b *strings.Builder, objectClass packageObjectClassSpec) {
	if strings.HasSuffix(objectClass.ClassName, "Args") && strings.TrimSpace(objectClass.Comment) != "" {
		macroName := argsClassDocMacroName(objectClass.ModulePath, objectClass.ClassName)
		fmt.Fprintf(b, "/// {@template %s}\n", macroName)
		writeDartDocComment(b, "", objectClass.Comment)
		fmt.Fprintf(b, "/// {@endtemplate}\n")
		fmt.Fprintf(b, "/// {@macro %s}\n", macroName)
	} else {
		writeDartDocComment(b, "", objectClass.Comment)
	}
	fmt.Fprintf(b, "class %s {\n", objectClass.ClassName)
	for _, property := range objectClass.Properties {
		writeDartDocComment(b, "  ", property.Comment)
		fmt.Fprintf(
			b,
			"  final %s %s;\n",
			objectClassPropertyDartType(objectClass, property),
			property.FieldName,
		)
	}

	if len(objectClass.Properties) == 0 {
		fmt.Fprintf(b, "\n  %s();\n\n", objectClass.ClassName)
	} else {
		fmt.Fprintf(b, "\n  /// Creates a new [%s].\n", objectClass.ClassName)
		for _, property := range objectClass.Properties {
			fmt.Fprintf(
				b,
				"  /// [%s] %s\n",
				property.FieldName,
				constructorParameterDoc(property),
			)
		}
		fmt.Fprintf(b, "  %s({\n", objectClass.ClassName)
		for _, property := range objectClass.Properties {
			if property.Required {
				fmt.Fprintf(b, "    required this.%s,\n", property.FieldName)
			} else {
				fmt.Fprintf(b, "    this.%s,\n", property.FieldName)
			}
		}
		b.WriteString("  })")
		b.WriteString(";\n\n")
	}

	b.WriteString("  Map<String, dynamic> toMap() {\n")
	b.WriteString("    return <String, dynamic>{\n")
	for _, property := range objectClass.Properties {
		if property.Required {
			fmt.Fprintf(
				b,
				"      %s: %s,\n",
				dartStringLiteral(property.Name),
				objectClassToMapExpression(objectClass, property),
			)
		} else {
			fmt.Fprintf(
				b,
				"      %s: ?%s,\n",
				dartStringLiteral(property.Name),
				objectClassToMapExpression(objectClass, property),
			)
		}
	}
	b.WriteString("    };\n")
	b.WriteString("  }\n\n")

	fmt.Fprintf(b, "  factory %s.fromMap(Map<String, dynamic> map) {\n", objectClass.ClassName)
	fmt.Fprintf(b, "    return %s(\n", objectClass.ClassName)
	for _, property := range objectClass.Properties {
		fmt.Fprintf(
			b,
			"      %s: %s,\n",
			property.FieldName,
			objectClassFromMapExpression(objectClass, property),
		)
	}
	b.WriteString("    );\n")
	b.WriteString("  }\n")
	b.WriteString("}\n\n")
}

func generatedPackageLibrary(spec *packageSchema, packageName string) []byte {
	var b strings.Builder
	fmt.Fprintf(&b, "library %s;\n\n", packageName)
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n\n")

	resourceTokens := make([]string, 0, len(spec.Resources))
	for token := range spec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)
	functionTokens := make([]string, 0, len(spec.Functions))
	for token := range spec.Functions {
		functionTokens = append(functionTokens, token)
	}
	sort.Strings(functionTokens)
	hasPackageRegistration := spec.Parameterization != nil &&
		spec.Parameterization.PluginName != "" &&
		spec.Parameterization.PluginVersion != "" &&
		spec.Parameterization.PackageVersion != ""
	usesDeploymentModels := len(functionTokens) > 0 || hasPackageRegistration
	hasConfig := spec.Config != nil
	configNeedsJSONDecode := false
	hasInputReferenceMappings := false
	needsDecodeListHelper := false
	needsDecodeMapHelper := false
	needsEncodeListHelper := false
	needsEncodeMapHelper := false
	for _, objectClass := range spec.ObjectClasses {
		for _, property := range objectClass.Properties {
			typeSpec := propertyTypeSpec(property)
			if objectClass.UsesInputTypes && typeSpecNeedsEncodeConversion(typeSpec) {
				hasInputReferenceMappings = true
			}
			if typeSpecNeedsDecodeListHelper(typeSpec) {
				needsDecodeListHelper = true
			}
			if typeSpecNeedsDecodeMapHelper(typeSpec) {
				needsDecodeMapHelper = true
			}
			if typeSpecNeedsEncodeListHelper(typeSpec) {
				needsEncodeListHelper = true
			}
			if typeSpecNeedsEncodeMapHelper(typeSpec) {
				needsEncodeMapHelper = true
			}
		}
	}
	if hasConfig {
		for _, property := range spec.Config.Properties {
			typeSpec := propertyTypeSpec(property)
			if configTypeRequiresJSONDecode(typeSpec) {
				configNeedsJSONDecode = true
			}
			if typeSpecNeedsDecodeListHelper(typeSpec) {
				needsDecodeListHelper = true
			}
			if typeSpecNeedsDecodeMapHelper(typeSpec) {
				needsDecodeMapHelper = true
			}
		}
	}
	if configNeedsJSONDecode {
		b.WriteString("import 'dart:convert';\n\n")
	}

	if usesDeploymentModels {
		b.WriteString("import 'package:pulumi/src/deployment/models.dart' as deployment_models;\n\n")
	}

	if len(resourceTokens) > 0 {
		b.WriteString(`pulumi.Inputs _mapToInputs(Map<String, dynamic> args) {
  final mapped = <String, pulumi.Input<dynamic>>{};
  for (final entry in args.entries) {
    final value = entry.value;
    if (value is pulumi.Input<dynamic>) {
      mapped[entry.key] = value;
    } else {
      mapped[entry.key] = pulumi.Input.fromValue(value);
    }
  }
  return mapped;
}

`)
	}

	if hasInputReferenceMappings {
		b.WriteString(`pulumi.Input<U> _mapInputValue<T, U>(pulumi.Input<T> input, U Function(T value) mapper) {
  return pulumi.Input.fromOutput(input.toOutput().apply((value) => mapper(value as T)));
}

pulumi.Input<U>? _mapOptionalInputValue<T, U>(pulumi.Input<T>? input, U Function(T value) mapper) {
  if (input == null) {
    return null;
  }
  return _mapInputValue<T, U>(input, mapper);
}

`)
	}

	if needsDecodeListHelper {
		b.WriteString(`List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

`)
	}

	if needsDecodeMapHelper {
		b.WriteString(`Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

`)
	}

	if needsEncodeListHelper {
		b.WriteString(`List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

`)
	}

	if needsEncodeMapHelper {
		b.WriteString(`Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
}

`)
	}

	if len(functionTokens) > 0 {
		b.WriteString(`deployment_models.InvokeOptions? _toDeploymentInvokeOptions(pulumi.InvokeOptions? options) {
  if (options == null) {
    return null;
  }

  return deployment_models.InvokeOptions(
    parent: options.parent,
    provider: options.provider,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
  );
}

`)
	}

	if hasPackageRegistration {
		downloadURLLine := ""
		if spec.Parameterization.DownloadURL != "" {
			downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", spec.Parameterization.DownloadURL)
		}
		fmt.Fprintf(
			&b,
			`final deployment_models.RegisterPackageRequest _registerPackageRequest = deployment_models.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  parameterization: deployment_models.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);

`,
			spec.Parameterization.PluginName,
			spec.Parameterization.PluginVersion,
			downloadURLLine,
			spec.Parameterization.PackageName,
			spec.Parameterization.PackageVersion,
			dartByteListLiteral(spec.Parameterization.Value),
		)
	}

	if len(resourceTokens) == 0 &&
		len(functionTokens) == 0 &&
		!hasConfig &&
		len(spec.Enums) == 0 &&
		len(spec.ObjectClasses) == 0 {
		b.WriteString("// This package schema did not define resources or functions.\n")
		return []byte(b.String())
	}

	if len(spec.Enums) > 0 {
		for _, enumSpec := range spec.Enums {
			writeGeneratedEnumClass(&b, enumSpec)
		}
	}

	if len(spec.ObjectClasses) > 0 {
		for _, objectClass := range spec.ObjectClasses {
			writeGeneratedObjectClass(&b, objectClass)
		}
	}

	if hasConfig {
		writeGeneratedConfigClass(&b, *spec.Config)
	}

	usedClassNames := map[string]int{}
	resourceRegisterPackageArg := ""
	if hasPackageRegistration {
		resourceRegisterPackageArg = ",\n          registerPackageRequest: _registerPackageRequest"
	}
	for _, token := range resourceTokens {
		resource := spec.Resources[token]
		className := resourceClassNameFromToken(token, usedClassNames)
		writeDartDocComment(&b, "", resource.Comment)

		if resource.IsComponent {
			fmt.Fprintf(&b, "class %s extends pulumi.ComponentResource {\n", className)
			for _, property := range resource.OutputProperties {
				writeDartDocComment(&b, "  ", property.Comment)
				fmt.Fprintf(
					&b,
					"  late final pulumi.Output<%s> %s;\n",
					resourceOutputValueType(property),
					property.FieldName,
				)
			}
			if len(resource.OutputProperties) > 0 {
				b.WriteString("\n")
			}

			signature := "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
			if resource.ArgsClass != "" {
				signature = "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
				fmt.Fprintf(&b, signature, className, resource.ArgsClass, dartStringLiteral(token))
			} else {
				fmt.Fprintf(&b, signature, className, dartStringLiteral(token))
			}

			if len(resource.OutputProperties) == 0 {
				b.WriteString(";\n}\n\n")
			} else {
				b.WriteString(" {\n")
				for _, property := range resource.OutputProperties {
					fmt.Fprintf(
						&b,
						"    this.%s = registerOutput<%s>(%s);\n",
						property.FieldName,
						resourceOutputValueType(property),
						dartStringLiteral(property.Name),
					)
				}
				b.WriteString("  }\n}\n\n")
			}
			continue
		}

		fmt.Fprintf(&b, "class %s extends pulumi.CustomResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final pulumi.Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}
		if resource.ArgsClass != "" {
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
				className,
				resource.ArgsClass,
				dartStringLiteral(token),
				resourceRegisterPackageArg,
			)
		} else {
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          _mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
				className,
				dartStringLiteral(token),
				resourceRegisterPackageArg,
			)
		}
		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n}\n\n")
			continue
		}
		b.WriteString(" {\n")
		for _, property := range resource.OutputProperties {
			fmt.Fprintf(
				&b,
				"    this.%s = registerOutput<%s>(%s);\n",
				property.FieldName,
				resourceOutputValueType(property),
				dartStringLiteral(property.Name),
			)
		}
		b.WriteString("  }\n}\n\n")
	}

	usedFunctionNames := map[string]int{}
	invokeRegisterPackageArg := ""
	if hasPackageRegistration {
		invokeRegisterPackageArg = ",\n    registerPackageRequest: _registerPackageRequest"
	}
	for _, token := range functionTokens {
		funcName := functionNameFromToken(token, usedFunctionNames)
		function := spec.Functions[token]
		writeDartDocComment(&b, "", function.Comment)

		signatureArgs := "Map<String, dynamic> args, {\n  pulumi.InvokeOptions? options,\n"
		invokeArgs := "args"
		if function.ArgsClass != "" {
			signatureArgs = fmt.Sprintf("%s args, {\n  pulumi.InvokeOptions? options,\n", function.ArgsClass)
			invokeArgs = "args.toMap()"
		} else if !function.HasArgs {
			signatureArgs = "{\n  pulumi.InvokeOptions? options,\n"
			invokeArgs = "const <String, dynamic>{}"
		}

		if function.ResultClass != "" {
			fmt.Fprintf(
				&b,
				"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n\n",
				function.ResultClass,
				funcName,
				signatureArgs,
				dartStringLiteral(token),
				invokeArgs,
				invokeRegisterPackageArg,
				function.ResultClass,
			)
			continue
		}

		fmt.Fprintf(
			&b,
			"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n}\n\n",
			funcName,
			signatureArgs,
			dartStringLiteral(token),
			invokeArgs,
			invokeRegisterPackageArg,
		)
	}

	return []byte(b.String())
}

func toSnakeCaseIdentifier(value string) string {
	if value == "" {
		return "generated"
	}

	var out []rune
	var prev rune
	for i, r := range value {
		isUpper := r >= 'A' && r <= 'Z'
		isLower := r >= 'a' && r <= 'z'
		isDigit := r >= '0' && r <= '9'
		if isUpper {
			if i > 0 && (prev >= 'a' && prev <= 'z' || prev >= '0' && prev <= '9') {
				out = append(out, '_')
			}
			out = append(out, r-'A'+'a')
		} else if isLower || isDigit {
			out = append(out, r)
		} else if len(out) > 0 && out[len(out)-1] != '_' {
			out = append(out, '_')
		}
		prev = r
	}

	result := strings.Trim(strings.TrimSpace(string(out)), "_")
	if result == "" {
		return "generated"
	}
	return result
}

func collectReferenceTypes(typeSpec packageTypeSpec, refs map[string]struct{}) {
	if typeSpec.ReferenceType != "" && !typeSpec.IsExternalRef {
		refs[typeSpec.ReferenceType] = struct{}{}
	}
	if typeSpec.ElementType != nil {
		collectReferenceTypes(*typeSpec.ElementType, refs)
	}
}

func collectExternalImports(typeSpec packageTypeSpec, imports map[string]string) {
	if typeSpec.ExternalImport != "" && typeSpec.ExternalAlias != "" {
		imports[typeSpec.ExternalImport] = typeSpec.ExternalAlias
	}
	if typeSpec.ElementType != nil {
		collectExternalImports(*typeSpec.ElementType, imports)
	}
}

func externalImportsFromProperties(properties []packagePropertySpec) map[string]string {
	imports := map[string]string{}
	for _, property := range properties {
		collectExternalImports(property.TypeSpec, imports)
	}
	return imports
}

func referencedTypesFromProperties(properties []packagePropertySpec) []string {
	refs := map[string]struct{}{}
	for _, property := range properties {
		collectReferenceTypes(property.TypeSpec, refs)
	}
	names := make([]string, 0, len(refs))
	for name := range refs {
		names = append(names, name)
	}
	sort.Strings(names)
	return names
}

func objectClassNeedsObjectHelpers(objectClass packageObjectClassSpec) bool {
	if objectClass.UsesInputTypes {
		return true
	}
	for _, property := range objectClass.Properties {
		typeSpec := propertyTypeSpec(property)
		if typeSpecNeedsDecodeListHelper(typeSpec) || typeSpecNeedsDecodeMapHelper(typeSpec) {
			return true
		}
		if typeSpecNeedsEncodeListHelper(typeSpec) || typeSpecNeedsEncodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}

func configNeedsObjectHelpers(configSpec packageConfigSpec) bool {
	for _, property := range configSpec.Properties {
		typeSpec := propertyTypeSpec(property)
		if typeSpecNeedsDecodeListHelper(typeSpec) || typeSpecNeedsDecodeMapHelper(typeSpec) {
			return true
		}
	}
	return false
}

func generatedObjectClassFile(
	objectClass packageObjectClassSpec,
	filePath string,
	typeFilesByName map[string][]generatedTypeFile,
) []byte {
	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")
	if objectClass.UsesInputTypes || objectClassNeedsObjectHelpers(objectClass) {
		b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")
	}

	imports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(objectClass.Properties) {
		if ref == objectClass.ClassName {
			continue
		}
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, objectClass.ModulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	externalImports := externalImportsFromProperties(objectClass.Properties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		fmt.Fprintf(&b, "import '%s' as %s;\n", path, externalImports[path])
	}
	b.WriteString("\n")

	writeGeneratedObjectClass(&b, objectClass)
	return []byte(b.String())
}

func generatedEnumFile(enumSpec packageEnumSpec) []byte {
	var b strings.Builder
	writeGeneratedEnumClass(&b, enumSpec)
	return []byte(b.String())
}

func generatedResourceFile(
	token string,
	resource packageResourceSpec,
	className string,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []byte {
	var b strings.Builder
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")

	imports := map[string]struct{}{}
	modulePath := tokenModulePath(token)
	if resource.ArgsClass != "" {
		if path, ok := resolveTypeFilePath(typeFilesByName, resource.ArgsClass, modulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	if resource.StateClass != "" {
		if path, ok := resolveTypeFilePath(typeFilesByName, resource.StateClass, modulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	for _, method := range resource.Methods {
		if method.ArgsClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, method.ArgsClass, modulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
		if method.ResultClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, method.ResultClass, modulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
	}
	for _, ref := range referencedTypesFromProperties(resource.OutputProperties) {
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, modulePath); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	externalImports := externalImportsFromProperties(resource.OutputProperties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		fmt.Fprintf(&b, "import '%s' as %s;\n", path, externalImports[path])
	}
	if hasPackageRegistration && !resource.IsComponent {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

	writeDartDocComment(&b, "", resource.Comment)
	if resource.IsProvider {
		providerPackageName := tokenProviderName(token)
		if providerPackageName == "" {
			providerPackageName = strings.TrimSpace(token)
		}
		fmt.Fprintf(&b, "class %s extends pulumi.ProviderResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final pulumi.Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}

		if resource.ArgsClass != "" {
			writeGeneratedResourceConstructorDoc(
				&b,
				"  ",
				className,
				"args",
				fmt.Sprintf(
					"Arguments used to configure this [%s]. {@macro %s}",
					className,
					argsClassDocMacroName(modulePath, resource.ArgsClass),
				),
			)
		} else {
			writeGeneratedResourceConstructorDoc(&b, "  ", className, "", "")
		}

		if resource.ArgsClass != "" {
			fmt.Fprintf(&b, "  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions(),\n        )", className, resource.ArgsClass, dartStringLiteral(providerPackageName))
		} else {
			fmt.Fprintf(&b, "  %s(\n    String name, {\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          const <String, pulumi.Input<dynamic>>{},\n          options ?? pulumi.CustomResourceOptions(),\n        )", className, dartStringLiteral(providerPackageName))
		}

		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n")
		} else {
			b.WriteString(" {\n")
			for _, property := range resource.OutputProperties {
				fmt.Fprintf(
					&b,
					"    this.%s = registerOutput<%s>(%s);\n",
					property.FieldName,
					resourceOutputValueType(property),
					dartStringLiteral(property.Name),
				)
			}
			b.WriteString("  }\n")
		}
		writeGeneratedResourceMethods(&b, token, resource, hasPackageRegistration)
		b.WriteString("}\n")

		return []byte(b.String())
	}

	if resource.IsComponent {
		fmt.Fprintf(&b, "class %s extends pulumi.ComponentResource {\n", className)
		for _, property := range resource.OutputProperties {
			writeDartDocComment(&b, "  ", property.Comment)
			fmt.Fprintf(
				&b,
				"  late final pulumi.Output<%s> %s;\n",
				resourceOutputValueType(property),
				property.FieldName,
			)
		}
		if len(resource.OutputProperties) > 0 {
			b.WriteString("\n")
		}

		if resource.ArgsClass != "" {
			writeGeneratedResourceConstructorDoc(
				&b,
				"  ",
				className,
				"args",
				fmt.Sprintf(
					"Arguments used to configure this [%s]. {@macro %s}",
					className,
					argsClassDocMacroName(modulePath, resource.ArgsClass),
				),
			)
		} else {
			writeGeneratedResourceConstructorDoc(&b, "  ", className, "", "")
		}

		signature := "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
		if resource.ArgsClass != "" {
			signature = "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
			fmt.Fprintf(&b, signature, className, resource.ArgsClass, dartStringLiteral(token))
		} else {
			fmt.Fprintf(&b, signature, className, dartStringLiteral(token))
		}

		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n")
		} else {
			b.WriteString(" {\n")
			for _, property := range resource.OutputProperties {
				fmt.Fprintf(
					&b,
					"    this.%s = registerOutput<%s>(%s);\n",
					property.FieldName,
					resourceOutputValueType(property),
					dartStringLiteral(property.Name),
				)
			}
			b.WriteString("  }\n")
		}
		writeGeneratedResourceMethods(&b, token, resource, hasPackageRegistration)
		b.WriteString("}\n")
		return []byte(b.String())
	}

	fmt.Fprintf(&b, "class %s extends pulumi.CustomResource {\n", className)
	for _, property := range resource.OutputProperties {
		writeDartDocComment(&b, "  ", property.Comment)
		fmt.Fprintf(
			&b,
			"  late final pulumi.Output<%s> %s;\n",
			resourceOutputValueType(property),
			property.FieldName,
		)
	}
	if len(resource.OutputProperties) > 0 {
		b.WriteString("\n")
	}

	resourceRegisterPackageArg := ""
	if hasPackageRegistration {
		resourceRegisterPackageArg = ",\n          registerPackageRequest: package_registration.registerPackageRequest"
	}

	if resource.ArgsClass != "" {
		writeGeneratedResourceConstructorDoc(
			&b,
			"  ",
			className,
			"args",
			fmt.Sprintf(
				"Arguments used to configure this [%s]. {@macro %s}",
				className,
				argsClassDocMacroName(modulePath, resource.ArgsClass),
			),
		)
	} else {
		writeGeneratedResourceConstructorDoc(
			&b,
			"  ",
			className,
			"args",
			"The raw input arguments for this resource.",
		)
	}

	if resource.ArgsClass != "" {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
			className,
			resource.ArgsClass,
			dartStringLiteral(token),
			resourceRegisterPackageArg,
		)
	} else {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
			className,
			dartStringLiteral(token),
			resourceRegisterPackageArg,
		)
	}

	if len(resource.OutputProperties) == 0 {
		b.WriteString(";\n")
	} else {
		b.WriteString(" {\n")
		for _, property := range resource.OutputProperties {
			fmt.Fprintf(
				&b,
				"    this.%s = registerOutput<%s>(%s);\n",
				property.FieldName,
				resourceOutputValueType(property),
				dartStringLiteral(property.Name),
			)
		}
		b.WriteString("  }\n")
	}
	writeGeneratedResourceMethods(&b, token, resource, hasPackageRegistration)
	if resource.StateClass != "" {
		writeGeneratedResourceGetMethod(&b, token, resource, className)
	}
	b.WriteString("}\n")
	return []byte(b.String())
}

func writeGeneratedResourceMethods(
	b *strings.Builder,
	resourceToken string,
	resource packageResourceSpec,
	hasPackageRegistration bool,
) {
	if len(resource.Methods) == 0 {
		return
	}

	usedMethodNames := map[string]int{}
	for _, method := range resource.Methods {
		if method.Name == "" && method.Token == "" {
			continue
		}

		methodNameCandidates := make([]string, 0, 3)
		if method.Name != "" {
			methodNameCandidates = append(methodNameCandidates, method.Name)
		}
		if method.Token != "" {
			methodNameCandidates = append(methodNameCandidates, functionNameCandidatesFromToken(method.Token)...)
		}
		methodName := claimUniqueIdentifierFromCandidates(methodNameCandidates, usedMethodNames)

		b.WriteString("\n")
		writeDartDocComment(b, "  ", method.Comment)
		if method.ArgsClass != "" {
			fmt.Fprintf(
				b,
				"  /// [args] Arguments passed to this method call. {@macro %s}\n",
				argsClassDocMacroName(tokenModulePath(resourceToken), method.ArgsClass),
			)
		}

		callArgs := "const <String, dynamic>{}"
		signature := ""
		if method.ArgsClass != "" {
			signature = fmt.Sprintf("({\n    %s? args,\n  })", method.ArgsClass)
			callArgs = "args?.toMap() ?? const <String, dynamic>{}"
		} else {
			signature = "()"
		}

		registerPackageArg := ""
		if hasPackageRegistration {
			registerPackageArg = ",\n      registerPackageRequest: package_registration.registerPackageRequest"
		}
		methodToken := method.Token
		if methodToken == "" {
			methodToken = method.Name
		}

		if method.ResultClass != "" {
			fmt.Fprintf(
				b,
				"  Future<%s> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    final result = await deployment.callWithResult<Map<String, dynamic>>(\n      %s,\n      %s,\n      self: this%s,\n    );\n    return %s.fromMap(result);\n  }\n",
				method.ResultClass,
				methodName,
				signature,
				dartStringLiteral(methodToken),
				callArgs,
				registerPackageArg,
				method.ResultClass,
			)
			continue
		}

		if method.HasReturn {
			fmt.Fprintf(
				b,
				"  Future<Map<String, dynamic>> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    return await deployment.callWithResult<Map<String, dynamic>>(\n      %s,\n      %s,\n      self: this%s,\n    );\n  }\n",
				methodName,
				signature,
				dartStringLiteral(methodToken),
				callArgs,
				registerPackageArg,
			)
			continue
		}

		fmt.Fprintf(
			b,
			"  Future<void> %s%s async {\n    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;\n    await deployment.call(\n      %s,\n      %s,\n      self: this%s,\n    );\n  }\n",
			methodName,
			signature,
			dartStringLiteral(methodToken),
			callArgs,
			registerPackageArg,
		)
	}
}

func writeGeneratedResourceGetMethod(
	b *strings.Builder,
	token string,
	resource packageResourceSpec,
	className string,
) {
	if resource.StateClass == "" || resource.IsProvider || resource.IsComponent {
		return
	}

	fmt.Fprintf(
		b,
		"\n  /// Gets an existing [%s] resource's state with the given [name] and [id].\n  static %s get(\n    String name,\n    pulumi.Input<String> id, {\n    %s? state,\n  }) {\n    return %s._get(\n      name,\n      state: state?.toMap(),\n      options: pulumi.CustomResourceOptions(id: id),\n    );\n  }\n",
		className,
		className,
		resource.StateClass,
		className,
	)
	fmt.Fprintf(
		b,
		"\n  %s._get(\n    String name, {\n    Map<String, dynamic>? state,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          %s,\n          name,\n          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),\n          options ?? pulumi.CustomResourceOptions(),\n        )",
		className,
		dartStringLiteral(token),
	)
	if len(resource.OutputProperties) == 0 {
		b.WriteString(";\n")
		return
	}
	b.WriteString(" {\n")
	for _, property := range resource.OutputProperties {
		fmt.Fprintf(
			b,
			"    this.%s = registerOutput<%s>(%s);\n",
			property.FieldName,
			resourceOutputValueType(property),
			dartStringLiteral(property.Name),
		)
	}
	b.WriteString("  }\n")
}

type generatedFunctionSpec struct {
	Token      string
	ModulePath string
	Function   packageFunctionSpec
	FuncName   string
}

func writeGeneratedFunctionDefinition(
	b *strings.Builder,
	token string,
	function packageFunctionSpec,
	funcName string,
	hasPackageRegistration bool,
) {
	invokeRegisterPackageArg := ""
	if hasPackageRegistration {
		invokeRegisterPackageArg = ",\n    registerPackageRequest: package_registration.registerPackageRequest"
	}

	writeDartDocComment(b, "", function.Comment)
	if function.ArgsClass != "" {
		fmt.Fprintf(
			b,
			"/// [args] Arguments passed to this invoke. {@macro %s}\n",
			argsClassDocMacroName(tokenModulePath(token), function.ArgsClass),
		)
	}
	fmt.Fprintf(b, "/// [options] Invoke options controlling this call.\n")
	signatureArgs := "Map<String, dynamic> args, {\n  pulumi.InvokeOptions? options,\n"
	invokeArgs := "args"
	if function.ArgsClass != "" {
		signatureArgs = fmt.Sprintf("%s args, {\n  pulumi.InvokeOptions? options,\n", function.ArgsClass)
		invokeArgs = "args.toMap()"
	} else if !function.HasArgs {
		signatureArgs = "{\n  pulumi.InvokeOptions? options,\n"
		invokeArgs = "const <String, dynamic>{}"
	}

	if function.ResultClass != "" {
		fmt.Fprintf(
			b,
			"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n",
			function.ResultClass,
			funcName,
			signatureArgs,
			dartStringLiteral(token),
			invokeArgs,
			invokeRegisterPackageArg,
			function.ResultClass,
		)
		return
	}

	fmt.Fprintf(
		b,
		"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    %s,\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n}\n",
		funcName,
		signatureArgs,
		dartStringLiteral(token),
		invokeArgs,
		invokeRegisterPackageArg,
	)
}

func generatedFunctionsFile(
	functions []generatedFunctionSpec,
	filePath string,
	hasPackageRegistration bool,
	typeFilesByName map[string][]generatedTypeFile,
	registrationFilePath string,
) []byte {
	var b strings.Builder
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")

	imports := map[string]struct{}{}
	for _, fn := range functions {
		if fn.Function.ArgsClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, fn.Function.ArgsClass, fn.ModulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
		if fn.Function.ResultClass != "" {
			if path, ok := resolveTypeFilePath(typeFilesByName, fn.Function.ResultClass, fn.ModulePath); ok {
				imports[relativeDartImportPath(filePath, path)] = struct{}{}
			}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	if hasPackageRegistration {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

	for i, fn := range functions {
		writeGeneratedFunctionDefinition(&b, fn.Token, fn.Function, fn.FuncName, hasPackageRegistration)
		if i != len(functions)-1 {
			b.WriteString("\n")
		}
	}

	return []byte(b.String())
}

func generatedConfigFile(
	spec *packageSchema,
	packageName string,
	filePath string,
	typeFilesByName map[string][]generatedTypeFile,
) []byte {
	if spec.Config == nil {
		return nil
	}

	var b strings.Builder
	b.WriteString("// ignore_for_file: unused_element, unnecessary_cast\n\n")

	configNeedsJSONDecode := false
	for _, property := range spec.Config.Properties {
		if configTypeRequiresJSONDecode(propertyTypeSpec(property)) {
			configNeedsJSONDecode = true
			break
		}
	}
	if configNeedsJSONDecode {
		b.WriteString("import 'dart:convert';\n")
	}
	b.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n")

	imports := map[string]struct{}{}
	for _, ref := range referencedTypesFromProperties(spec.Config.Properties) {
		if path, ok := resolveTypeFilePath(typeFilesByName, ref, "config"); ok {
			imports[relativeDartImportPath(filePath, path)] = struct{}{}
		}
	}
	importPaths := make([]string, 0, len(imports))
	for path := range imports {
		importPaths = append(importPaths, path)
	}
	sort.Strings(importPaths)
	for _, path := range importPaths {
		fmt.Fprintf(&b, "import '%s';\n", path)
	}
	externalImports := externalImportsFromProperties(spec.Config.Properties)
	externalImportPaths := make([]string, 0, len(externalImports))
	for path := range externalImports {
		externalImportPaths = append(externalImportPaths, path)
	}
	sort.Strings(externalImportPaths)
	for _, path := range externalImportPaths {
		fmt.Fprintf(&b, "import '%s' as %s;\n", path, externalImports[path])
	}
	b.WriteString("\n")

	writeGeneratedConfigClass(&b, *spec.Config)
	return []byte(b.String())
}

func generatedPackageRegistrationFile(parameterization *packageParameterizationSpec) []byte {
	if parameterization == nil ||
		parameterization.PluginName == "" ||
		parameterization.PluginVersion == "" ||
		parameterization.PackageVersion == "" {
		return nil
	}

	downloadURLLine := ""
	if parameterization.DownloadURL != "" {
		downloadURLLine = fmt.Sprintf("\n  downloadUrl: %q,", parameterization.DownloadURL)
	}

	return []byte(fmt.Sprintf(
		`import 'package:pulumi/src/deployment/models.dart' as deployment_models;

final registerPackageRequest = deployment_models.RegisterPackageRequest(
  name: %q,
  version: %q,%s
  parameterization: deployment_models.Parameterization(
    name: %q,
    version: %q,
    value: %s,
  ),
);
`,
		parameterization.PluginName,
		parameterization.PluginVersion,
		downloadURLLine,
		parameterization.PackageName,
		parameterization.PackageVersion,
		dartByteListLiteral(parameterization.Value),
	))
}

func dartByteListLiteral(value []byte) string {
	if len(value) == 0 {
		return "const <int>[]"
	}

	var b strings.Builder
	b.WriteString("<int>[")
	for i, v := range value {
		if i > 0 {
			b.WriteString(", ")
		}
		b.WriteString(strconv.Itoa(int(v)))
	}
	b.WriteString("]")
	return b.String()
}
