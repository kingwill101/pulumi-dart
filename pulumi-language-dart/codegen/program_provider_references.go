package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) providerResourceReferenceExpression(
	defaultPackage string, expression model.Expression, typ *schema.ResourceType, nullable bool,
) (string, error) {
	value, err := lowerer.expression(expression)
	if err != nil {
		return "", err
	}
	if !nullable {
		resource := typ.Resource
		if resource == nil {
			resource = lowerer.resourceTypes[typ.Token]
		}
		if resource == nil {
			return "", fmt.Errorf("unknown resource reference type %q", typ.Token)
		}
		pkg, _, _, diagnostics := pcl.DecomposeToken(typ.Token, expression.SyntaxNode().Range())
		if diagnostics.HasErrors() {
			pkg = defaultPackage
		}
		pkg = dartPackageNameForReference(pkg, resource.PackageReference)
		module, className, _ := programProviderResourceName(resource)
		lowerer.imports[pkg+"\x00"+module] = dartProgramImport{Package: pkg, Module: module}
		lowerer.addResourceReference(typ.Token, pkg, module, className)
		dartType := programModuleAlias(pkg, module) + "." + className
		return "pulumi.output(" + value + ").apply<" + dartType + ">((value) => value!)", nil
	}
	return value, nil
}

func programResourceTypes(packages []*schema.Package) map[string]*schema.Resource {
	result := map[string]*schema.Resource{}
	for _, pkg := range packages {
		for _, resource := range pkg.Resources {
			result[resource.Token] = resource
		}
		if pkg.Provider != nil {
			result[pkg.Provider.Token] = pkg.Provider
		}
	}
	return result
}

func resourceInputProperty(resource *pcl.Resource, name string) *schema.Property {
	if resource.Schema == nil {
		return nil
	}
	for _, property := range resource.Schema.InputProperties {
		if property.Name == name {
			return property
		}
	}
	return nil
}
