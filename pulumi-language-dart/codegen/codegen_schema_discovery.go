package codegen

import (
	"fmt"
	"sort"
	"strings"
)

type rawSchemaDiscovery struct {
	typeTokens             []string
	resourceTokens         []string
	resourceSpecs          map[string]rawResourceSpec
	namedTypeRefs          map[string]packageNamedTypeRef
	usedClassNamesByModule map[string]map[string]int
}

func discoverRawSchema(rawSpec rawPackageSchema) rawSchemaDiscovery {
	discovery := rawSchemaDiscovery{
		resourceSpecs:          normalizedRawResources(rawSpec),
		namedTypeRefs:          map[string]packageNamedTypeRef{},
		usedClassNamesByModule: map[string]map[string]int{},
	}
	discovery.typeTokens = sortedMapKeys(rawSpec.Types)
	discovery.resourceTokens = sortedMapKeys(discovery.resourceSpecs)
	discovery.reserveNamedTypes(rawSpec.Types)
	discovery.reserveResources()
	return discovery
}

func (d *rawSchemaDiscovery) reserveNamedTypes(types map[string]rawTypeSpec) {
	for _, token := range d.typeTokens {
		typeSpec := types[token]
		canonicalName := canonicalTypeName(tokenElementName(token))
		if len(typeSpec.Enum) > 0 {
			d.namedTypeRefs[token] = packageNamedTypeRef{
				Kind:             "enum",
				Name:             d.uniqueTypeName(token, "Enum"),
				CanonicalName:    canonicalName,
				UnderlyingType:   dartTypeFromRawTypeName(typeSpec.Type),
				UseReferenceType: true,
			}
			continue
		}
		if typeSpec.Type != "object" {
			continue
		}

		name := ""
		useReferenceType := len(typeSpec.Properties) > 0
		if useReferenceType {
			name = d.uniqueTypeName(token, "Type")
		}
		d.namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "object",
			Name:             name,
			CanonicalName:    canonicalName,
			UnderlyingType:   "Map<String, dynamic>",
			UseReferenceType: useReferenceType,
		}
	}
}

func (d *rawSchemaDiscovery) uniqueTypeName(token, fallbackSuffix string) string {
	modulePath := tokenModulePath(token)
	return uniqueQualifiedClassName(
		tokenElementName(token),
		modulePath,
		moduleScopedTypeNameSet(d.usedClassNamesByModule, modulePath),
		"",
		fallbackSuffix,
	)
}

func (d *rawSchemaDiscovery) reserveResources() {
	for _, token := range d.resourceTokens {
		modulePath := tokenModulePath(token)
		className := resourceClassNameFromToken(
			token,
			moduleScopedTypeNameSet(d.usedClassNamesByModule, modulePath),
		)
		d.namedTypeRefs[token] = packageNamedTypeRef{
			Kind:             "resource",
			Name:             className,
			CanonicalName:    canonicalTypeName(tokenElementName(token)),
			UnderlyingType:   "dynamic",
			UseReferenceType: true,
		}
	}
}

func normalizedRawResources(rawSpec rawPackageSchema) map[string]rawResourceSpec {
	resources := make(map[string]rawResourceSpec, len(rawSpec.Resources)+1)
	for token, resource := range rawSpec.Resources {
		resources[token] = resource
	}
	if rawSpec.Provider == nil {
		return resources
	}

	providerToken := strings.TrimSpace(rawSpec.Provider.Token)
	if providerToken == "" {
		providerToken = fmt.Sprintf("pulumi:providers:%s", rawSpec.Name)
	}
	provider := *rawSpec.Provider
	provider.IsProvider = true
	if existing, ok := resources[providerToken]; ok {
		existing.IsProvider = true
		existing.RequiredInputs = appendDistinctStringSet(existing.RequiredInputs, provider.RequiredInputs)
		existing.InputProperties = mergeRawPropertySpecs(existing.InputProperties, provider.InputProperties)
		existing.Properties = mergeRawPropertySpecs(existing.Properties, provider.Properties)
		existing.Methods = mergeRawMethods(existing.Methods, provider.Methods)
		resources[providerToken] = existing
	} else {
		resources[providerToken] = provider
	}
	return resources
}

func sortedMapKeys[V any](values map[string]V) []string {
	keys := make([]string, 0, len(values))
	for key := range values {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	return keys
}
