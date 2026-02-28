package main

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strconv"
	"strings"

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
	Comment          string                `json:"-"`
	ArgsClass        string                `json:"-"`
	OutputProperties []packagePropertySpec `json:"-"`
}

type packageFunctionSpec struct {
	Comment     string `json:"-"`
	HasArgs     bool   `json:"-"`
	ArgsClass   string `json:"-"`
	ResultClass string `json:"-"`
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
}

type rawConfigSpec struct {
	Description string                         `json:"description"`
	Variables   map[string]rawPropertyTypeSpec `json:"variables"`
	Required    []string                       `json:"required"`
}

type rawResourceSpec struct {
	Description     string                         `json:"description"`
	IsComponent     bool                           `json:"isComponent"`
	InputProperties map[string]rawPropertyTypeSpec `json:"inputProperties"`
	RequiredInputs  []string                       `json:"requiredInputs"`
	Properties      map[string]rawPropertyTypeSpec `json:"properties"`
	Required        []string                       `json:"required"`
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

func rawRequiredSet(required []string) map[string]struct{} {
	requiredSet := make(map[string]struct{}, len(required))
	for _, property := range required {
		requiredSet[property] = struct{}{}
	}
	return requiredSet
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
		return strconv.Quote(v), true
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

func rawRefToken(ref string) string {
	if ref == "" {
		return ""
	}
	const typesPrefix = "#/types/"
	if strings.HasPrefix(ref, typesPrefix) {
		return strings.TrimPrefix(ref, typesPrefix)
	}
	return ref
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
) packageTypeSpec {
	if token := rawRefToken(typ.Ref); token != "" {
		if namedType, ok := namedTypeRefs[token]; ok {
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
			if namedType.Kind == "enum" {
				return makePackageTypeSpec("scalar", namedType.UnderlyingType)
			}
			return makePackageTypeSpec("object", "Map<String, dynamic>")
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
			elementSpec = dartTypeSpecFromRawPropertyType(*typ.Items, namedTypeRefs, useReferenceTypes)
		}
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementSpec.DartType),
			ElementType: &elementSpec,
		}
	case "object":
		if typ.AdditionalProperties != nil {
			valueSpec := dartTypeSpecFromRawPropertyType(*typ.AdditionalProperties, namedTypeRefs, useReferenceTypes)
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
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes)
			if typeSpec.DartType != "dynamic" {
				return typeSpec
			}
		}
	}

	if len(typ.AnyOf) > 0 {
		for _, candidate := range typ.AnyOf {
			typeSpec := dartTypeSpecFromRawPropertyType(candidate, namedTypeRefs, useReferenceTypes)
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

func parsePackageSchema(schemaJSON string) (*packageSchema, error) {
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
		); configClass != nil {
			spec.Config = &packageConfigSpec{
				ClassName:  configClass.ClassName,
				Comment:    configClass.Comment,
				Properties: configClass.Properties,
			}
		}
	}

	resourceTokens := make([]string, 0, len(rawSpec.Resources))
	for token := range rawSpec.Resources {
		resourceTokens = append(resourceTokens, token)
	}
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		resource := rawSpec.Resources[token]
		resourceBaseName := toDartClassName(tokenElementName(token))
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
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
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}
		resourceSpec.OutputProperties = makeRawResourceOutputPropertySpecs(resource, namedTypeRefs)
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

func typeNameCandidates(baseName, modulePath string, suffixes ...string) []string {
	base := toDartClassName(baseName)
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
		elementType := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes)
		return packageTypeSpec{
			Kind:        "array",
			DartType:    fmt.Sprintf("List<%s>", elementType.DartType),
			ElementType: &elementType,
		}
	case *schema.MapType:
		valueType := dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes)
		return packageTypeSpec{
			Kind:        "map",
			DartType:    fmt.Sprintf("Map<String, %s>", valueType.DartType),
			ElementType: &valueType,
		}
	case *schema.UnionType:
		if t.DefaultType != nil {
			return dartTypeSpecFromSchemaType(t.DefaultType, namedTypeRefs, useReferenceTypes)
		}
		for _, elementType := range t.ElementTypes {
			candidate := dartTypeSpecFromSchemaType(elementType, namedTypeRefs, useReferenceTypes)
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
		return dartTypeSpecFromSchemaType(t.ElementType, namedTypeRefs, useReferenceTypes)
	case *schema.TokenType:
		if namedTypeRefs != nil {
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
				if namedType.Kind == "enum" {
					return makePackageTypeSpec("scalar", namedType.UnderlyingType)
				}
				return makePackageTypeSpec("object", "Map<String, dynamic>")
			}
		}
		if t.UnderlyingType != nil {
			return dartTypeSpecFromSchemaType(t.UnderlyingType, namedTypeRefs, useReferenceTypes)
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
		return makePackageTypeSpec("object", "Map<String, dynamic>")
	case *schema.ResourceType:
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

func makeSchemaEnumSpec(typeName string, modulePath string, enumType *schema.EnumType) *packageEnumSpec {
	if enumType == nil || len(enumType.Elements) == 0 {
		return nil
	}

	underlyingType := dartTypeSpecFromSchemaType(enumType.ElementType, nil, false).DartType
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
			underlyingType := dartTypeSpecFromSchemaType(t.ElementType, nil, false).DartType
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
			if enumSpec := makeSchemaEnumSpec(namedType.Name, tokenModulePath(token), t); enumSpec != nil {
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
				false,
			); classSpec != nil {
				classSpec.CanonicalName = namedType.CanonicalName
				spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			}
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
	sort.Strings(resourceTokens)

	for _, token := range resourceTokens {
		resource := resourceByToken[token]
		resourceBaseName := toDartClassName(tokenElementName(resource.Token))
		resourceSpec := packageResourceSpec{
			IsComponent: resource.IsComponent,
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
			"Args",
			"ResourceArgs",
		); classSpec != nil {
			classSpec.CanonicalName = canonicalTypeName(resourceBaseName, "Args")
			spec.ObjectClasses = append(spec.ObjectClasses, *classSpec)
			resourceSpec.ArgsClass = classSpec.ClassName
		}
		resourceSpec.OutputProperties = makeResourceOutputPropertySpecs(resource, namedTypeRefs)
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
	return uniqueQualifiedClassName(tokenElementName(token), tokenModulePath(token), used, "", "Resource", "Res")
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
	sourceExpr := fmt.Sprintf("map['%s']", property.Name)
	typeSpec := propertyTypeSpec(property)
	decodedExpr := typeSpecDecodeExpression(typeSpec, sourceExpr)
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

func configTypeNeedsIntParser(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "scalar":
		return typeSpec.DartType == "int"
	case "enum":
		return typeSpec.ReferenceWireType == "int"
	default:
		return false
	}
}

func configTypeNeedsDoubleParser(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "scalar":
		return typeSpec.DartType == "double"
	case "enum":
		return typeSpec.ReferenceWireType == "double"
	default:
		return false
	}
}

func configTypeNeedsBoolParser(typeSpec packageTypeSpec) bool {
	switch typeSpec.Kind {
	case "scalar":
		return typeSpec.DartType == "bool"
	case "enum":
		return typeSpec.ReferenceWireType == "bool"
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
			parseWire = fmt.Sprintf("_parseIntConfig(%s)", rawExpr)
		case "double":
			parseWire = fmt.Sprintf("_parseDoubleConfig(%s)", rawExpr)
		case "bool":
			parseWire = fmt.Sprintf("_parseBoolConfig(%s)", rawExpr)
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
		return fmt.Sprintf("_parseIntConfig(%s)", rawExpr)
	case "double":
		return fmt.Sprintf("_parseDoubleConfig(%s)", rawExpr)
	case "bool":
		return fmt.Sprintf("_parseBoolConfig(%s)", rawExpr)
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
		fmt.Fprintf(b, "    final raw = _raw('%s');\n", property.Name)
		fmt.Fprintf(b, "    return %s;\n", configPropertyParseExpression(property, "raw"))
		b.WriteString("  }\n\n")

		if property.Required {
			methodName := "require" + toDartClassName(property.FieldName)
			returnType := propertyBaseDartType(property)
			fmt.Fprintf(b, "  %s %s() {\n", returnType, methodName)
			fmt.Fprintf(b, "    final value = %s;\n", property.FieldName)
			fmt.Fprintf(
				b,
				"    if (value == null) {\n      throw ArgumentError(\"Missing required config value '%s'.\");\n    }\n",
				property.Name,
			)
			b.WriteString("    return value;\n")
			b.WriteString("  }\n\n")
		}

		fmt.Fprintf(b, "  bool get %sIsSecret => _isSecret('%s');\n\n", property.FieldName, property.Name)
	}

	b.WriteString("}\n\n")
	b.WriteString(fmt.Sprintf("final config = %s();\n\n", configSpec.ClassName))
}

var (
	pulumiCodeChooserMarkerPattern = regexp.MustCompile(`(?i)<!--\s*(Start|End)\s+PulumiCodeChooser\s*-->`)
	exampleUsageHeaderPattern      = regexp.MustCompile(`(?i)^##\s+Example Usage\s*$`)
	htmlSpanTagPattern             = regexp.MustCompile(`(?i)</?span\b[^>]*>`)
	deprecatedProviderRefPattern   = regexp.MustCompile(`^/resources/pulumi:providers:[^/]+$`)
)

func sanitizeDartDocComment(comment string) string {
	// Normalize CRLF/CR from upstream docs to avoid embedding raw carriage
	// returns that can break Dart parser/formatter behavior.
	comment = strings.ReplaceAll(comment, "\r", "")
	// Strip Pulumi code chooser markers while preserving enclosed markdown content.
	comment = pulumiCodeChooserMarkerPattern.ReplaceAllString(comment, "")
	// Remove pulumi-lang span wrappers while keeping inner text.
	comment = htmlSpanTagPattern.ReplaceAllString(comment, "")
	comment = strings.TrimSpace(comment)

	lines := strings.Split(comment, "\n")
	trimmed := make([]string, len(lines))
	copy(trimmed, lines)
	for len(trimmed) > 0 && strings.TrimSpace(trimmed[len(trimmed)-1]) == "" {
		trimmed = trimmed[:len(trimmed)-1]
	}
	for len(trimmed) > 0 && exampleUsageHeaderPattern.MatchString(strings.TrimSpace(trimmed[len(trimmed)-1])) {
		trimmed = trimmed[:len(trimmed)-1]
		for len(trimmed) > 0 && strings.TrimSpace(trimmed[len(trimmed)-1]) == "" {
			trimmed = trimmed[:len(trimmed)-1]
		}
	}

	return strings.TrimSpace(strings.Join(trimmed, "\n"))
}

func normalizeDeprecatedProviderReferences(rawSchema string) string {
	var decoded interface{}
	if err := json.Unmarshal([]byte(rawSchema), &decoded); err != nil {
		return rawSchema
	}

	normalized := rewriteDeprecatedProviderRefNodes(decoded)
	encoded, err := json.Marshal(normalized)
	if err != nil {
		return rawSchema
	}

	return string(encoded)
}

func rewriteDeprecatedProviderRefNodes(node interface{}) interface{} {
	switch current := node.(type) {
	case map[string]interface{}:
		for key, value := range current {
			if key == "$ref" {
				if ref, ok := value.(string); ok && deprecatedProviderRefPattern.MatchString(ref) {
					current[key] = "#/provider"
					continue
				}
			}
			current[key] = rewriteDeprecatedProviderRefNodes(value)
		}
		return current
	case []interface{}:
		for i := range current {
			current[i] = rewriteDeprecatedProviderRefNodes(current[i])
		}
		return current
	default:
		return node
	}
}

func writeDartDocComment(b *strings.Builder, indent, comment string) {
	comment = sanitizeDartDocComment(comment)
	if comment == "" {
		return
	}

	inCodeFence := false
	for _, rawLine := range strings.Split(comment, "\n") {
		trimmed := strings.TrimSpace(rawLine)
		if strings.HasPrefix(trimmed, "```") || strings.HasPrefix(trimmed, "~~~") {
			fmt.Fprintf(b, "%s/// %s\n", indent, trimmed)
			inCodeFence = !inCodeFence
			continue
		}

		line := trimmed
		if inCodeFence {
			// Preserve leading indentation inside fenced code examples.
			line = strings.TrimRight(rawLine, " \t")
		}

		if line == "" {
			fmt.Fprintf(b, "%s///\n", indent)
			continue
		}
		fmt.Fprintf(b, "%s/// %s\n", indent, line)
	}
}

func firstDartDocLine(comment string) string {
	comment = sanitizeDartDocComment(comment)
	if comment == "" {
		return ""
	}
	for _, rawLine := range strings.Split(comment, "\n") {
		line := strings.TrimSpace(rawLine)
		if line == "" {
			continue
		}
		return line
	}
	return ""
}

func constructorParameterDoc(property packagePropertySpec) string {
	if line := firstDartDocLine(property.Comment); line != "" {
		return line
	}
	if property.Required {
		return "Required."
	}
	return "Optional."
}

func argsClassDocMacroName(modulePath, className string) string {
	normalizedModule := normalizedModulePath(modulePath)
	if normalizedModule == "" {
		normalizedModule = "index"
	}
	moduleSegment := strings.ReplaceAll(normalizedModule, "/", "_")
	classSegment := toSnakeCaseIdentifier(className)
	return sanitizeDartIdentifier(fmt.Sprintf("pulumi_%s_%s_doc", moduleSegment, classSegment))
}

func writeGeneratedResourceConstructorDoc(
	b *strings.Builder,
	indent, className, argsName, argsDoc string,
) {
	fmt.Fprintf(b, "%s/// Creates a new [%s].\n", indent, className)
	fmt.Fprintf(b, "%s/// [name] The Pulumi resource name.\n", indent)
	if argsName != "" {
		fmt.Fprintf(b, "%s/// [%s] %s\n", indent, argsName, argsDoc)
	}
	fmt.Fprintf(b, "%s/// [options] Resource options controlling this resource's behavior.\n", indent)
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
			constructorType := objectClassConstructorPropertyDartType(objectClass, property)
			if property.Required {
				if objectClass.UsesInputTypes {
					fmt.Fprintf(b, "    required %s %s,\n", constructorType, property.FieldName)
				} else {
					fmt.Fprintf(b, "    required this.%s,\n", property.FieldName)
				}
			} else {
				if objectClass.UsesInputTypes {
					fmt.Fprintf(b, "    %s %s,\n", constructorType, property.FieldName)
				} else {
					fmt.Fprintf(b, "    this.%s,\n", property.FieldName)
				}
			}
		}
		b.WriteString("  })")
		if objectClass.UsesInputTypes {
			b.WriteString(" :\n")
			for i, property := range objectClass.Properties {
				separator := ","
				if i == len(objectClass.Properties)-1 {
					separator = ";"
				}
				base := propertyBaseDartType(property)
				if property.Required {
					fmt.Fprintf(
						b,
						"      %s = pulumi.Input.asInput<%s>(%s)%s\n",
						property.FieldName,
						base,
						property.FieldName,
						separator,
					)
				} else {
					fmt.Fprintf(
						b,
						"      %s = pulumi.Input.asOptionalInput<%s>(%s)%s\n",
						property.FieldName,
						base,
						property.FieldName,
						separator,
					)
				}
			}
			b.WriteString("\n")
		} else {
			b.WriteString(";\n\n")
		}
	}

	b.WriteString("  Map<String, dynamic> toMap() {\n")
	b.WriteString("    final map = <String, dynamic>{};\n")
	for _, property := range objectClass.Properties {
		if property.Required {
			fmt.Fprintf(
				b,
				"    map['%s'] = %s;\n",
				property.Name,
				objectClassToMapExpression(objectClass, property),
			)
		} else {
			valueName := property.FieldName + "Value"
			fmt.Fprintf(
				b,
				"    final %s = %s;\n    if (%s != null) {\n      map['%s'] = %s;\n    }\n",
				valueName,
				property.FieldName,
				valueName,
				property.Name,
				objectClassToMapExpressionFromSource(objectClass, property, valueName),
			)
		}
	}
	b.WriteString("    return map;\n")
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
	configNeedsIntParser := false
	configNeedsDoubleParser := false
	configNeedsBoolParser := false
	hasTypedInputObjects := false
	hasInputReferenceMappings := false
	needsDecodeListHelper := false
	needsDecodeMapHelper := false
	needsEncodeListHelper := false
	needsEncodeMapHelper := false
	for _, objectClass := range spec.ObjectClasses {
		if objectClass.UsesInputTypes {
			hasTypedInputObjects = true
		}
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
			if configTypeNeedsIntParser(typeSpec) {
				configNeedsIntParser = true
			}
			if configTypeNeedsDoubleParser(typeSpec) {
				configNeedsDoubleParser = true
			}
			if configTypeNeedsBoolParser(typeSpec) {
				configNeedsBoolParser = true
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

	if hasTypedInputObjects {
		b.WriteString(`pulumi.Input<T> _asInput<T>(dynamic value) {
  if (value is pulumi.Input<T>) {
    return value;
  }
  return pulumi.Input.fromValue(value as T);
}

pulumi.Input<T>? _asOptionalInput<T>(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is pulumi.Input<T>) {
    return value;
  }
  return pulumi.Input.fromValue(value as T);
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

	if hasConfig && configNeedsIntParser {
		b.WriteString(`int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

`)
	}

	if hasConfig && configNeedsDoubleParser {
		b.WriteString(`double? _parseDoubleConfig(String? value) {
  if (value == null) {
    return null;
  }
  return double.tryParse(value);
}

`)
	}

	if hasConfig && configNeedsBoolParser {
		b.WriteString(`bool? _parseBoolConfig(String? value) {
  if (value == null) {
    return null;
  }

  switch (value.toLowerCase()) {
    case 'true':
    case '1':
      return true;
    case 'false':
    case '0':
      return false;
    default:
      return null;
  }
}

`)
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

			signature := "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
			if resource.ArgsClass != "" {
				signature = "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
				fmt.Fprintf(&b, signature, className, resource.ArgsClass, token)
			} else {
				fmt.Fprintf(&b, signature, className, token)
			}

			if len(resource.OutputProperties) == 0 {
				b.WriteString(";\n}\n\n")
			} else {
				b.WriteString(" {\n")
				for _, property := range resource.OutputProperties {
					fmt.Fprintf(
						&b,
						"    this.%s = registerOutput<%s>('%s');\n",
						property.FieldName,
						resourceOutputValueType(property),
						property.Name,
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
				"  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
				className,
				resource.ArgsClass,
				token,
				resourceRegisterPackageArg,
			)
		} else {
			fmt.Fprintf(
				&b,
				"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          _mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
				className,
				token,
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
				"    this.%s = registerOutput<%s>('%s');\n",
				property.FieldName,
				resourceOutputValueType(property),
				property.Name,
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
				"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n\n",
				function.ResultClass,
				funcName,
				signatureArgs,
				token,
				invokeArgs,
				invokeRegisterPackageArg,
				function.ResultClass,
			)
			continue
		}

		fmt.Fprintf(
			&b,
			"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: _toDeploymentInvokeOptions(options)%s,\n  );\n}\n\n",
			funcName,
			signatureArgs,
			token,
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
	if typeSpec.ReferenceType != "" {
		refs[typeSpec.ReferenceType] = struct{}{}
	}
	if typeSpec.ElementType != nil {
		collectReferenceTypes(*typeSpec.ElementType, refs)
	}
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
	if hasPackageRegistration && !resource.IsComponent {
		fmt.Fprintf(&b, "import '%s' as package_registration;\n", relativeDartImportPath(filePath, registrationFilePath))
	}
	b.WriteString("\n")

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

		signature := "  %s(\n    String name, {\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          null,\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
		if resource.ArgsClass != "" {
			signature = "  %s(\n    String name, {\n    %s? args,\n    pulumi.ComponentResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.ComponentResourceOptions(),\n        )"
			fmt.Fprintf(&b, signature, className, resource.ArgsClass, token)
		} else {
			fmt.Fprintf(&b, signature, className, token)
		}

		if len(resource.OutputProperties) == 0 {
			b.WriteString(";\n}\n")
		} else {
			b.WriteString(" {\n")
			for _, property := range resource.OutputProperties {
				fmt.Fprintf(
					&b,
					"    this.%s = registerOutput<%s>('%s');\n",
					property.FieldName,
					resourceOutputValueType(property),
					property.Name,
				)
			}
			b.WriteString("  }\n}\n")
		}
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
			"  %s(\n    String name, {\n    %s? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
			className,
			resource.ArgsClass,
			token,
			resourceRegisterPackageArg,
		)
	} else {
		fmt.Fprintf(
			&b,
			"  %s(\n    String name, {\n    Map<String, dynamic>? args,\n    pulumi.CustomResourceOptions? options,\n  }) : super(\n          '%s',\n          name,\n          pulumi.Input.mapToInputs(args ?? const {}),\n          options ?? pulumi.CustomResourceOptions()%s,\n        )",
			className,
			token,
			resourceRegisterPackageArg,
		)
	}
	if len(resource.OutputProperties) == 0 {
		b.WriteString(";\n}\n")
		return []byte(b.String())
	}
	b.WriteString(" {\n")
	for _, property := range resource.OutputProperties {
		fmt.Fprintf(
			&b,
			"    this.%s = registerOutput<%s>('%s');\n",
			property.FieldName,
			resourceOutputValueType(property),
			property.Name,
		)
	}
	b.WriteString("  }\n}\n")
	return []byte(b.String())
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
			"Future<%s> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  final result = await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n  return %s.fromMap(result);\n}\n",
			function.ResultClass,
			funcName,
			signatureArgs,
			token,
			invokeArgs,
			invokeRegisterPackageArg,
			function.ResultClass,
		)
		return
	}

	fmt.Fprintf(
		b,
		"Future<Map<String, dynamic>> %s(\n  %s}) async {\n  final deployment = pulumi.Deployment.instance;\n  return await deployment.invoke<Map<String, dynamic>>(\n    '%s',\n    %s,\n    options: pulumi.toDeploymentInvokeOptions(options)%s,\n  );\n}\n",
		funcName,
		signatureArgs,
		token,
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
	b.WriteString("\n")

	b.WriteString(`int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

double? _parseDoubleConfig(String? value) {
  if (value == null) {
    return null;
  }
  return double.tryParse(value);
}

bool? _parseBoolConfig(String? value) {
  if (value == null) {
    return null;
  }

  switch (value.toLowerCase()) {
    case 'true':
    case '1':
      return true;
    case 'false':
    case '0':
      return false;
    default:
      return null;
  }
}

`)

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

func normalizeGeneratedVersion(version string) string {
	version = strings.TrimSpace(version)
	if version == "" {
		return ""
	}
	return strings.TrimPrefix(version, "v")
}

func generatedSDKPackageVersion(upstreamVersion string) string {
	if override := normalizeGeneratedVersion(os.Getenv("PULUMI_DART_SDK_VERSION")); override != "" {
		return override
	}

	baseVersion := normalizeGeneratedVersion(upstreamVersion)
	if baseVersion == "" {
		baseVersion = "0.0.1"
	}

	if suffix := strings.TrimSpace(os.Getenv("PULUMI_DART_SDK_VERSION_SUFFIX")); suffix != "" {
		if strings.HasPrefix(suffix, "-") || strings.HasPrefix(suffix, "+") {
			return baseVersion + suffix
		}
		return baseVersion + "-" + suffix
	}

	return baseVersion
}

func dependencyPackageName(rootDirectory, dependencyPath, fallbackName string) string {
	pubspecPath := filepath.Join(rootDirectory, dependencyPath, "pubspec.yaml")
	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil || pubspec.Name == "" {
		return sanitizeDartIdentifier(fallbackName)
	}
	return sanitizeDartIdentifier(pubspec.Name)
}

func generatedProgramStub(pclSource map[string]string) []byte {
	var sourceFiles []string
	for filename := range pclSource {
		sourceFiles = append(sourceFiles, filename)
	}
	sort.Strings(sourceFiles)

	var sourceList string
	if len(sourceFiles) > 0 {
		sourceList = strings.Join(sourceFiles, ", ")
	} else {
		sourceList = "(no source files provided)"
	}

	return []byte(fmt.Sprintf(`import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  GeneratedStack() {
    // Generated by pulumi-language-dart from PCL sources: %s
    // Replace this scaffold with generated resource definitions.
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
`, sourceList))
}

func generatedPackageExampleMain(packageName string) []byte {
	return []byte(fmt.Sprintf(`// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:%s/%s.dart' as provider;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    // Add resources from package:%s.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
`, packageName, packageName, packageName))
}

func generatedPackageReadme(packageName, packagePath string) []byte {
	gitURL := strings.TrimSpace(os.Getenv("PULUMI_DART_SDK_GIT_URL"))
	if gitURL == "" {
		gitURL = "https://github.com/<owner>/<repo>.git"
	}
	gitRef := strings.TrimSpace(os.Getenv("PULUMI_DART_SDK_GIT_REF"))
	if gitRef == "" {
		gitRef = "main"
	}

	return []byte(fmt.Sprintf(`# %s

Generated Pulumi provider SDK for Dart.

## Installation

~~~sh
dart pub add %s
~~~

## Usage

~~~dart
import 'package:%s/%s.dart' as provider;
~~~

## Alternative: Use directly from GitHub

~~~yaml
dependencies:
  %s:
    git:
      url: %s
      path: packages/%s
      ref: %s
~~~

See the example/ directory for a runnable sample.

_This file is preserved across SDK regeneration done via task generate:<provider>._
`, packageName, packageName, packageName, packageName, packageName, gitURL, packagePath, gitRef))
}

func generatedPackageChangelog(version string) []byte {
	if strings.TrimSpace(version) == "" {
		version = "0.1.0"
	}
	return []byte(fmt.Sprintf(`# Changelog

All notable changes to this package will be documented in this file.

## %s

- Initial generated release.

_This file is preserved across SDK regeneration done via task generate:<provider>._
`, version))
}

func generatedPackageAnalysisOptions() []byte {
	return []byte(`include: package:very_good_analysis/analysis_options.yaml
`)
}

func buildGeneratedPubspec(
	packageName string,
	localDependencies map[string]string,
	schemaDependencies map[string]interface{},
) PubSpec {
	pubspec := PubSpec{
		Name:        packageName,
		Description: "Generated Pulumi Dart project.",
		Version:     "0.0.1",
		Environment: map[string]string{
			"sdk": "^3.10.0",
		},
		Dependencies: map[string]interface{}{},
	}

	schemaDependencyNames := make([]string, 0, len(schemaDependencies))
	for name := range schemaDependencies {
		if strings.TrimSpace(name) == "" {
			continue
		}
		schemaDependencyNames = append(schemaDependencyNames, name)
	}
	sort.Strings(schemaDependencyNames)
	for _, name := range schemaDependencyNames {
		pubspec.Dependencies[name] = schemaDependencies[name]
	}

	dependencyNames := make([]string, 0, len(localDependencies))
	for name := range localDependencies {
		if strings.TrimSpace(name) == "" {
			continue
		}
		dependencyNames = append(dependencyNames, name)
	}
	sort.Strings(dependencyNames)

	for _, name := range dependencyNames {
		dependencyPath := strings.TrimSpace(localDependencies[name])
		if dependencyPath == "" {
			continue
		}
		pubspec.Dependencies[name] = map[string]string{
			"path": filepath.ToSlash(dependencyPath),
		}
	}

	if _, hasPulumiDependency := pubspec.Dependencies["pulumi"]; !hasPulumiDependency {
		// Prefer a permissive constraint so generated projects can resolve dependencies where available.
		pubspec.Dependencies["pulumi"] = "^1.0.0"
	}

	return pubspec
}

func inferLocalPulumiDependencyFromProject(startDir string) string {
	pubspecPath, err := findPubspecYaml(startDir)
	if err != nil {
		return ""
	}

	pubspec, err := ReadAndParsePubspec(pubspecPath)
	if err != nil || pubspec == nil || pubspec.Dependencies == nil {
		return ""
	}

	pulumiDependency, ok := pubspec.Dependencies["pulumi"]
	if !ok {
		return ""
	}

	version := getDependencyVersion(pulumiDependency)
	if !strings.HasPrefix(version, "path:") {
		return ""
	}

	pulumiPath := strings.TrimSpace(strings.TrimPrefix(version, "path:"))
	if pulumiPath == "" {
		return ""
	}
	if !filepath.IsAbs(pulumiPath) {
		pulumiPath = filepath.Join(filepath.Dir(pubspecPath), pulumiPath)
	}
	return filepath.Clean(pulumiPath)
}

func toPubspecTopics(keywords []string) []string {
	topics := make([]string, 0, len(keywords))
	seen := map[string]struct{}{}

	sanitize := func(value string) string {
		value = strings.ToLower(strings.TrimSpace(value))
		if value == "" {
			return ""
		}

		var b strings.Builder
		lastDash := false
		for _, r := range value {
			isLower := r >= 'a' && r <= 'z'
			isDigit := r >= '0' && r <= '9'
			if isLower || isDigit {
				b.WriteRune(r)
				lastDash = false
				continue
			}
			if !lastDash && b.Len() > 0 {
				b.WriteRune('-')
				lastDash = true
			}
		}

		result := strings.Trim(b.String(), "-")
		if len(result) > 32 {
			result = strings.Trim(result[:32], "-")
		}
		return result
	}

	for _, keyword := range keywords {
		topic := sanitize(keyword)
		if topic == "" {
			continue
		}
		if _, ok := seen[topic]; ok {
			continue
		}
		seen[topic] = struct{}{}
		topics = append(topics, topic)
		if len(topics) == 5 {
			break
		}
	}

	return topics
}

func applyPackageMetadataToPubspec(pubspec *PubSpec, spec *packageSchema) {
	if pubspec == nil || spec == nil {
		return
	}

	if description := strings.TrimSpace(spec.Description); description != "" {
		pubspec.Description = description
	}
	if license := strings.TrimSpace(spec.License); license != "" {
		pubspec.License = license
	}
	if homepage := strings.TrimSpace(spec.Homepage); homepage != "" {
		pubspec.Homepage = homepage
	}
	if repository := strings.TrimSpace(spec.Repository); repository != "" {
		pubspec.Repository = repository
	}

	pubspec.Topics = toPubspecTopics(spec.Keywords)
}

func safeOutputPath(rootDir, relativePath string) (string, error) {
	cleanRelativePath := filepath.Clean(relativePath)
	if cleanRelativePath == "." || cleanRelativePath == "" {
		return "", fmt.Errorf("path must not be empty: %q", relativePath)
	}
	if filepath.IsAbs(cleanRelativePath) {
		return "", fmt.Errorf("absolute paths are not allowed: %q", relativePath)
	}
	if cleanRelativePath == ".." || strings.HasPrefix(cleanRelativePath, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path escapes package directory: %q", relativePath)
	}

	outputPath := filepath.Join(rootDir, cleanRelativePath)
	relativeToRoot, err := filepath.Rel(rootDir, outputPath)
	if err != nil {
		return "", fmt.Errorf("failed to resolve output path for %q: %w", relativePath, err)
	}
	if relativeToRoot == ".." || strings.HasPrefix(relativeToRoot, ".."+string(filepath.Separator)) {
		return "", fmt.Errorf("path escapes package directory: %q", relativePath)
	}

	return outputPath, nil
}
