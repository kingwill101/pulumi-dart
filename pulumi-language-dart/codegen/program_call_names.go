package codegen

import (
	"sort"

	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

type programMethod struct {
	Package     string
	Module      string
	Name        string
	ArgsClass   string
	ResultClass string
	ReturnType  string
	ReturnPlain bool
	Schema      *schema.Function
}

func programMethods(packages []*schema.Package) map[string]programMethod {
	result := map[string]programMethod{}
	for _, pkg := range packages {
		spec := packageSchemaFromPackage(pkg)
		dartPackage := dartPackageNameForReference(pkg.Name, pkg.Reference())
		tokens := make([]string, 0, len(spec.Resources))
		for token := range spec.Resources {
			tokens = append(tokens, token)
		}
		sort.Strings(tokens)
		for _, token := range tokens {
			module := rootProgramModule(tokenModulePath(token))
			for _, method := range planResourceMethods(token, spec.Resources[token].Methods) {
				methodToken := method.Method.Token
				if methodToken == "" {
					continue
				}
				function, _ := pkg.GetFunction(methodToken)
				result[methodToken] = programMethod{
					Package: dartPackage, Module: module, Name: method.Name,
					ArgsClass: method.Method.ArgsClass, ResultClass: method.Method.ResultClass,
					ReturnType:  method.Method.ReturnType.DartType,
					ReturnPlain: method.Method.ReturnPlain, Schema: function,
				}
			}
		}
	}
	return result
}
