package codegen

import "fmt"

func lowerNotImplementedBuiltin(arguments []string) (string, error) {
	if len(arguments) != 1 {
		return "", fmt.Errorf("notImplemented expects one argument")
	}
	return "throw UnimplementedError((" + arguments[0] + ").toString())", nil
}
