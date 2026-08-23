package codegen

import (
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

type programFunction struct {
	Package     string
	Module      string
	Name        string
	ArgsClass   string
	ResultClass string
	Function    packageFunctionSpec
	Schema      *schema.Function
}

func programFunctions(packages []*schema.Package) map[string]programFunction {
	result := map[string]programFunction{}
	for _, pkg := range packages {
		spec := packageSchemaFromPackage(pkg)
		tokens := make([]string, 0, len(spec.Functions))
		for token := range spec.Functions {
			tokens = append(tokens, token)
		}
		sort.Strings(tokens)
		used := map[string]map[string]int{}
		for _, token := range tokens {
			function := spec.Functions[token]
			module := tokenModulePath(token)
			name := functionNameFromToken(token, moduleScopedIdentifierSet(used, module))
			schemaFunction, _ := pkg.GetFunction(token)
			planned := programFunction{
				Package: pkg.Name, Module: rootProgramModule(module), Name: name,
				ArgsClass: function.ArgsClass, ResultClass: function.ResultClass,
				Function: function,
				Schema:   schemaFunction,
			}
			result[token] = planned
			if module == "index" {
				result[pkg.Name+"::"+tokenElementName(token)] = planned
			}
		}
	}
	return result
}
