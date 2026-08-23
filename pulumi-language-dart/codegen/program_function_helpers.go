package codegen

import (
	"fmt"
	"strings"
)

func noArgumentBuiltin(name string, arguments []string, result string) (string, error) {
	if len(arguments) != 0 {
		return "", fmt.Errorf("%s expects no arguments", name)
	}
	return result, nil
}

func oneArgumentBuiltin(name string, arguments []string, function string) (string, error) {
	if len(arguments) != 1 {
		return "", fmt.Errorf("%s expects one argument", name)
	}
	return function + "(" + arguments[0] + ")", nil
}

func lowerMinMaxBuiltin(name string, arguments []string, expandFinal bool) (string, error) {
	if len(arguments) == 0 {
		return "", fmt.Errorf("%s expects at least one argument", name)
	}
	comparison := "<"
	if name == "max" {
		comparison = ">"
	}
	values := "[" + strings.Join(arguments, ", ") + "]"
	if expandFinal && len(arguments) == 1 {
		values = "(" + arguments[0] + ")"
	}
	return values + ".reduce(" +
		"(left, right) => left " + comparison + " right ? left : right)", nil
}
