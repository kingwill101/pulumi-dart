package codegen

import (
	"fmt"
	"strings"
)

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
