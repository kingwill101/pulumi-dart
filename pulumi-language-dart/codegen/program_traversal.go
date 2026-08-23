package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
)

func lowerDartTraversal(source string, traversal hcl.Traversal, properties bool) (string, error) {
	return lowerDartTraversalWithNullAwareProperties(source, traversal, properties, false)
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
