package codegen

import "fmt"

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
