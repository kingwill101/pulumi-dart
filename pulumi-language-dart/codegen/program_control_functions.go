package codegen

import (
	"fmt"
	"strings"
)

func lowerControlBuiltin(name string, arguments []string) (string, error, bool) {
	switch name {
	case "lookup":
		if len(arguments) != 3 {
			return "", fmt.Errorf("lookup expects three arguments"), true
		}
		return "pulumi.mapLookup(" + strings.Join(arguments, ", ") + ")", nil, true
	case "can":
		if len(arguments) != 1 {
			return "", fmt.Errorf("can expects one argument"), true
		}
		return "pulumi.canValue(() => " + arguments[0] + ")", nil, true
	case "try":
		if len(arguments) != 2 {
			return "", fmt.Errorf("try expects two arguments"), true
		}
		return "pulumi.tryValue(() => " + arguments[0] + ", () => " + arguments[1] + ")", nil, true
	default:
		return "", nil, false
	}
}
