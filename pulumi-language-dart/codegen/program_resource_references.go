package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func resourceReferenceType(expression *model.ScopeTraversalExpression) (*schema.ResourceType, bool) {
	if len(expression.Parts) < 2 {
		return nil, false
	}
	typ := model.ResolveOutputs(model.GetTraversableType(expression.Parts[1]))
	schemaType, ok := pcl.GetSchemaForType(typ)
	if !ok {
		return nil, false
	}
	for {
		switch wrapped := schemaType.(type) {
		case *schema.OptionalType:
			schemaType = wrapped.ElementType
		case *schema.InputType:
			schemaType = wrapped.ElementType
		default:
			resourceType, isResource := schemaType.(*schema.ResourceType)
			return resourceType, isResource
		}
	}
}

func (lowerer programLowerer) registerResourceReference(reference *schema.ResourceType) error {
	resource := reference.Resource
	if resource == nil {
		resource = lowerer.resourceTypes[reference.Token]
	}
	if resource == nil {
		return fmt.Errorf("unknown resource reference token %q", reference.Token)
	}
	pkg, _, _, diagnostics := pcl.DecomposeToken(reference.Token, hcl.Range{})
	if diagnostics.HasErrors() {
		return fmt.Errorf("invalid resource reference token %q", reference.Token)
	}
	pkg = dartPackageNameForReference(pkg, resource.PackageReference)
	module, className, _ := programProviderResourceName(resource)
	lowerer.imports[pkg+"\x00"+module] = dartProgramImport{Package: pkg, Module: module}
	lowerer.addResourceReference(reference.Token, pkg, module, className)
	return nil
}
