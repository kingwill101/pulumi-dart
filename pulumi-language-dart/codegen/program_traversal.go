package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
	"github.com/pulumi/pulumi/pkg/v3/codegen/schema"
)

func lowerDartTraversal(source string, traversal hcl.Traversal, properties bool) (string, error) {
	return lowerDartTraversalWithNullAwareProperties(source, traversal, properties, false)
}

func lowerResourceOutputTraversal(source string, expression *model.ScopeTraversalExpression) (string, error) {
	traversal := expression.Traversal[1:]
	if len(traversal) <= 1 {
		return lowerDartTraversal(source, traversal, true)
	}
	output, err := lowerDartTraversal(source, traversal[:1], true)
	if err != nil {
		return "", err
	}
	propertyAccess := resourceTraversalPropertyAccess(expression)
	value, err := lowerResourceOutputValueTraversal("value", traversal[1:], propertyAccess[1:], 0)
	if err != nil {
		return "", err
	}
	return output + ".apply<dynamic>((value) => " + value + ")", nil
}

func lowerResourceOutputValueTraversal(
	source string, traversal hcl.Traversal, propertyAccess []bool, depth int,
) (string, error) {
	if len(traversal) == 0 {
		return source, nil
	}
	head, err := lowerDartTraversalWithPropertyAccess(source, traversal[:1], propertyAccess[:1], true)
	if err != nil || len(traversal) == 1 {
		return head, err
	}
	if _, isProperty := traversal[0].(hcl.TraverseAttr); isProperty && propertyAccess[0] {
		value := fmt.Sprintf("nested%d", depth)
		tail, err := lowerResourceOutputValueTraversal(value, traversal[1:], propertyAccess[1:], depth+1)
		if err != nil {
			return "", err
		}
		return fmt.Sprintf("pulumi.output(%s).apply<dynamic>((%s) => %s)", head, value, tail), nil
	}
	return lowerResourceOutputValueTraversal(head, traversal[1:], propertyAccess[1:], depth)
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
				result[index] = isObject && object.Token != ""
				goto next
			}
		}
	next:
	}
	return result
}

func lowerDartTraversalWithNullAwareProperties(
	source string, traversal hcl.Traversal, properties, nullAwareProperties bool,
) (string, error) {
	propertyAccess := make([]bool, len(traversal))
	for index := range propertyAccess {
		propertyAccess[index] = properties
	}
	return lowerDartTraversalWithPropertyAccess(source, traversal, propertyAccess, nullAwareProperties)
}

func lowerDartTraversalWithPropertyAccess(
	source string, traversal hcl.Traversal, propertyAccess []bool, nullAwareProperties bool,
) (string, error) {
	result := source
	for index, traverser := range traversal {
		switch traverser := traverser.(type) {
		case hcl.TraverseAttr:
			if index < len(propertyAccess) && propertyAccess[index] {
				operator := "."
				if nullAwareProperties {
					operator = "?."
				}
				result += operator + propertyFieldName(traverser.Name, map[string]int{})
			} else {
				result = "pulumi.indexValue(" + result + ", " + dartStringLiteral(traverser.Name) + ")"
			}
		case hcl.TraverseIndex:
			key, err := lowerDartLiteral(traverser.Key)
			if err != nil {
				return "", err
			}
			result = "pulumi.indexValue(" + result + ", " + key + ")"
		default:
			return "", fmt.Errorf("unsupported traverser %T", traverser)
		}
	}
	return result, nil
}
