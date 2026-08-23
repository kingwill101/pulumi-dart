package codegen

import (
	"fmt"
	"sort"
	"strings"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func collectBoundResources(pkg *schema.Package) ([]string, map[string]*schema.Resource) {
	byToken := map[string]*schema.Resource{}
	tokens := make([]string, 0, len(pkg.Resources)+1)
	for _, resource := range pkg.Resources {
		byToken[resource.Token] = resource
		tokens = append(tokens, resource.Token)
	}
	if pkg.Provider != nil {
		token := strings.TrimSpace(pkg.Provider.Token)
		if token == "" {
			token = fmt.Sprintf("pulumi:providers:%s", pkg.Name)
		}
		if _, exists := byToken[token]; !exists {
			byToken[token] = pkg.Provider
			tokens = append(tokens, token)
		}
	}
	sort.Strings(tokens)
	return tokens, byToken
}
