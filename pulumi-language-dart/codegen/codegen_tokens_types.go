package codegen

import (
	"fmt"
	"path/filepath"
	"strings"
)

// sanitizeDartIdentifier converts arbitrary schema/provider names into
// lowercase snake_case identifiers valid for Dart packages and aliases.
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

// toDartPackageName computes a normalized Dart package name and guarantees the
// `pulumi_` prefix.
func toDartPackageName(namespace, name string) string {
	base := ""
	if namespace == "" {
		base = sanitizeDartIdentifier(name)
	} else {
		base = sanitizeDartIdentifier(namespace + "_" + name)
	}
	if namespace == "" && base == "pulumi" {
		return "pulumi"
	}
	if strings.HasPrefix(base, "pulumi_") {
		return base
	}
	return sanitizeDartIdentifier("pulumi_" + base)
}

// toDartClassName converts free-form names into PascalCase Dart type names.
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

// tokenElementName returns the trailing element segment from a Pulumi token.
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

// tokenModulePath returns the normalized module segment from a Pulumi token.
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

// tokenProviderName extracts the provider/package portion of a Pulumi token.
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

// canonicalProviderName normalizes provider identifiers for token and dependency
// matching.
func canonicalProviderName(name string) string {
	name = strings.TrimSpace(strings.ToLower(name))
	if name == "" {
		return ""
	}
	return strings.ReplaceAll(name, "_", "-")
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
	if isProviderResourceToken(token) {
		className = uniqueQualifiedClassName("Provider", tokenModulePath(token), map[string]int{}, "Provider", "")
	}
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

// rewriteModulePath normalizes provider module paths into Dart module layout.
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

// rewriteModuleRootSegment applies provider-specific root-module rewrites.
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

// resourceClassNameFromToken returns a unique Dart class name for a resource
// token within the current module/type namespace.
func resourceClassNameFromToken(token string, used map[string]int) string {
	if isProviderResourceToken(token) {
		return uniqueQualifiedClassName("Provider", tokenModulePath(token), used, "Provider", "")
	}

	return uniqueQualifiedClassName(tokenElementName(token), tokenModulePath(token), used, "", "Resource", "Res")
}

// resourceTypeBaseNameFromToken returns the non-qualified base class name for a
// resource token.
func resourceTypeBaseNameFromToken(token string) string {
	if isProviderResourceToken(token) {
		return "Provider"
	}
	return toDartClassName(tokenElementName(token))
}

// isProviderResourceToken reports whether token denotes pulumi:providers:<pkg>.
func isProviderResourceToken(token string) bool {
	return strings.HasPrefix(strings.TrimSpace(token), "pulumi:providers:")
}

// functionNameCandidatesFromToken derives safe callable identifier candidates
// from a function token, including module-qualified fallbacks.
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

// canonicalFunctionNameFromToken returns the first normalized function name
// candidate for a token.
func canonicalFunctionNameFromToken(token string) string {
	candidates := functionNameCandidatesFromToken(token)
	if len(candidates) == 0 {
		return "invoke"
	}
	return sanitizeCallableIdentifier(candidates[0])
}

// functionNameFromToken claims a unique function name from token-derived
// candidates.
func functionNameFromToken(token string, used map[string]int) string {
	return claimUniqueIdentifierFromCandidates(functionNameCandidatesFromToken(token), used)
}

// propertyTypeSpec returns the effective type spec for a property, preferring
// fully populated TypeSpec and falling back to DartType when needed.
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

// nullableDartType appends `?` for non-required non-dynamic types.
func nullableDartType(base string, required bool) string {
	if required || base == "dynamic" {
		return base
	}
	return base + "?"
}

// objectClassPropertyDartType computes emitted field type for object class
// properties, respecting input-wrapped vs value-wrapped mode.
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

// objectClassConstructorPropertyDartType computes constructor parameter type
// for object class properties.
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

// typeSpecElement returns element type for array/map specs, defaulting dynamic.
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

// typeSpecDecodeExpression returns a Dart expression that decodes sourceExpr
// from wire format to the requested Dart type.
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

// typeSpecEncodeExpression returns a Dart expression that encodes sourceExpr
// from typed Dart values to wire format.
func typeSpecEncodeExpression(typeSpec packageTypeSpec, sourceExpr string) string {
	switch typeSpec.Kind {
	case "enum":
		return fmt.Sprintf("%s.wireValue", sourceExpr)
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
