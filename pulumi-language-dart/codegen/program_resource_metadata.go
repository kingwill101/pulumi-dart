package codegen

import "fmt"

func resourceMetadataBuiltin(name string, arguments []string, getter string) (string, error) {
	if len(arguments) != 1 {
		return "", fmt.Errorf("%s expects one resource argument", name)
	}
	return arguments[0] + "." + getter + "()", nil
}
