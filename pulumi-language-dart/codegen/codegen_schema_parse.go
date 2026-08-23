package codegen

import (
	"encoding/json"
	"fmt"
	"sort"
	"strings"

	"github.com/pkg/errors"
)

func parsePackageSchema(schemaJSON, outputDir string) (*packageSchema, error) {
	var raw rawPackageSchema
	if err := json.Unmarshal([]byte(schemaJSON), &raw); err != nil {
		return nil, fmt.Errorf("failed to parse package schema: %w", err)
	}
	if raw.Name == "" {
		return nil, errors.New("package schema is missing name")
	}
	spec := &packageSchema{
		Name: raw.Name, Namespace: raw.Namespace, Version: raw.Version,
		Description: strings.TrimSpace(raw.Description), License: strings.TrimSpace(raw.License),
		Homepage: strings.TrimSpace(raw.Homepage), Repository: strings.TrimSpace(raw.Repository),
		Keywords: append([]string(nil), raw.Keywords...), Resources: map[string]packageResourceSpec{},
		Functions: map[string]packageFunctionSpec{}, Enums: []packageEnumSpec{}, ObjectClasses: []packageObjectClassSpec{},
	}
	discovery := discoverRawSchema(raw)
	external := newExternalRefResolver(raw.Name, filesystemExternalSchemaIndexLoader(outputDir))
	lowerRawTypeDeclarationsAndConfig(spec, raw, discovery, external)
	lowerRawResources(spec, raw, discovery, external)
	lowerRawFunctions(spec, raw, discovery, external)
	sort.Slice(spec.Enums, func(i, j int) bool { return spec.Enums[i].EnumName < spec.Enums[j].EnumName })
	sort.Slice(spec.ObjectClasses, func(i, j int) bool { return spec.ObjectClasses[i].ClassName < spec.ObjectClasses[j].ClassName })
	return spec, nil
}
