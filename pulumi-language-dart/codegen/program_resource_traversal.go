package codegen

import (
	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func (lowerer programLowerer) resourceOutputTraversal(source string, expression *model.ScopeTraversalExpression) (string, error) {
	traversal := expression.Traversal[1:]
	if len(traversal) <= 1 {
		if lowerer.rangedResourceKinds[expression.RootName] == "bool" {
			return lowerDartTraversalWithNullAwareProperties(source, traversal, true, true)
		}
		return lowerDartTraversal(source, traversal, true)
	}
	if reference, ok := resourceReferenceType(expression); ok {
		if err := lowerer.registerResourceReference(reference); err != nil {
			return "", err
		}
	}
	start, indexedSource := 0, source
	if _, indexed := traversal[0].(hcl.TraverseIndex); indexed {
		var err error
		indexedSource, err = lowerDartTraversal(source, traversal[:1], false)
		if err != nil {
			return "", err
		}
		start = 1
	}
	output, err := lowerDartTraversal(indexedSource, traversal[start:start+1], true)
	if err != nil || start+1 == len(traversal) {
		return output, err
	}
	propertyAccess := resourceTraversalPropertyAccess(expression)
	value, err := lowerResourceOutputValueTraversal("value", traversal[start+1:], propertyAccess[start+1:], 0)
	if err != nil {
		return "", err
	}
	return output + ".apply<dynamic>((value) => " + value + ")", nil
}

func resourceTraversalPropertyAccess(expression *model.ScopeTraversalExpression) []bool {
	result := make([]bool, len(expression.Traversal)-1)
	if len(result) > 0 {
		result[0] = true
	}
	for index := 1; index < len(result) && index < len(expression.Parts); index++ {
		typ := model.ResolveOutputs(model.GetTraversableType(expression.Parts[index]))
		schemaType, ok := pcl.GetSchemaForType(typ)
		if !ok {
			continue
		}
		for {
			switch wrapped := schemaType.(type) {
			case *schema.OptionalType:
				schemaType = wrapped.ElementType
			case *schema.InputType:
				schemaType = wrapped.ElementType
			default:
				object, isObject := schemaType.(*schema.ObjectType)
				_, isResource := schemaType.(*schema.ResourceType)
				result[index] = (isObject && object.Token != "") || isResource
				goto next
			}
		}
	next:
	}
	return result
}
