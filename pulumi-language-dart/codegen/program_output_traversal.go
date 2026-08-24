package codegen

import (
	"fmt"

	"github.com/hashicorp/hcl/v2"
)

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
