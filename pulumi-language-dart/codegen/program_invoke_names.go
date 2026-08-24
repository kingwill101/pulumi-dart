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
	ResultType  string
	Function    packageFunctionSpec
	Schema      *schema.Function
	InputTypes  map[string]string
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
				Package: toDartPackageName(pkg.Namespace, pkg.Name), Module: rootProgramModule(module), Name: name,
				ArgsClass: function.ArgsClass, ResultClass: function.ResultClass,
				ResultType: function.ReturnType.DartType,
				Function:   function,
				Schema:     schemaFunction,
				InputTypes: functionInputTypes(spec, function.ArgsClass),
			}
			result[token] = planned
			result[pkg.CanonicalizeToken(token)] = planned
			canonicalModule := pkg.TokenToModule(token)
			member := tokenElementName(token)
			result[pkg.Name+":"+canonicalModule+":"+member] = planned
			if canonicalModule == "index" {
				result[pkg.Name+":"+member] = planned
			}
			if module == "index" {
				result[pkg.Name+"::"+tokenElementName(token)] = planned
			}
		}
	}
	return result
}

func functionInputTypes(spec *packageSchema, argsClass string) map[string]string {
	result := map[string]string{}
	for _, object := range spec.ObjectClasses {
		if object.ClassName != argsClass {
			continue
		}
		for _, property := range object.Properties {
			result[property.Name] = property.DartType
		}
		break
	}
	return result
}
