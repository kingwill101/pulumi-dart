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

// registerResourceReferencesFromType registers resource types nested inside a
// resource output. Resource references are deserialized before generated output
// casts run, so collection elements must be registered just like direct resource
// outputs.
func (lowerer programLowerer) registerResourceReferencesFromType(typ schema.Type, seen map[schema.Type]bool) error {
	if typ == nil || seen[typ] {
		return nil
	}
	seen[typ] = true
	switch typ := typ.(type) {
	case *schema.OptionalType:
		return lowerer.registerResourceReferencesFromType(typ.ElementType, seen)
	case *schema.InputType:
		return lowerer.registerResourceReferencesFromType(typ.ElementType, seen)
	case *schema.ArrayType:
		return lowerer.registerResourceReferencesFromType(typ.ElementType, seen)
	case *schema.MapType:
		return lowerer.registerResourceReferencesFromType(typ.ElementType, seen)
	case *schema.UnionType:
		for _, element := range typ.ElementTypes {
			if err := lowerer.registerResourceReferencesFromType(element, seen); err != nil {
				return err
			}
		}
	case *schema.ObjectType:
		for _, property := range typ.Properties {
			if err := lowerer.registerResourceReferencesFromType(property.Type, seen); err != nil {
				return err
			}
		}
	case *schema.ResourceType:
		return lowerer.registerResourceReference(typ)
	}
	return nil
}

func (lowerer programLowerer) registerResourceOutputReferences(resource *schema.Resource) error {
	seen := map[schema.Type]bool{}
	for _, property := range resource.Properties {
		if err := lowerer.registerResourceReferencesFromType(property.Type, seen); err != nil {
			return err
		}
	}
	return nil
}
