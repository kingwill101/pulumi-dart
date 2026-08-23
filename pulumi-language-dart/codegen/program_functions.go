package codegen

import (
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/codegen/hcl2/model"
	"github.com/pulumi/pulumi/pkg/v3/codegen/pcl"
)

func (lowerer programLowerer) functionCallExpression(expression *model.FunctionCallExpression) (string, error) {
	if expression.Name == pcl.Invoke {
		return lowerer.invokeExpression(expression)
	}
	arguments := make([]string, len(expression.Args))
	for index, argument := range expression.Args {
		lowered, err := lowerer.expression(argument)
		if err != nil {
			return "", fmt.Errorf("%s argument %d: %w", expression.Name, index, err)
		}
		arguments[index] = lowered
	}
	if value, err, handled := lowerAssetBuiltin(expression.Name, arguments); handled {
		return value, err
	}
	if value, err, handled := lowerControlBuiltin(expression, arguments); handled {
		return value, err
	}
	switch expression.Name {
	case "length":
		if len(arguments) != 1 {
			return "", fmt.Errorf("length expects one argument")
		}
		if model.ResolveOutputs(expression.Args[0].Type()) == model.StringType {
			return "pulumi.stringLength(" + arguments[0] + ")", nil
		}
		return "(" + arguments[0] + ").length", nil
	case "toJSON":
		if len(arguments) != 1 {
			return "", fmt.Errorf("toJSON expects one argument")
		}
		return "pulumi.jsonStringify(" + arguments[0] + ")", nil
	case "split":
		if len(arguments) != 2 {
			return "", fmt.Errorf("split expects two arguments")
		}
		return "(" + arguments[1] + ").split(" + arguments[0] + ")", nil
	case "join":
		if len(arguments) != 2 {
			return "", fmt.Errorf("join expects two arguments")
		}
		return "(" + arguments[1] + ").join(" + arguments[0] + ")", nil
	case "element":
		if len(arguments) != 2 {
			return "", fmt.Errorf("element expects two arguments")
		}
		return "pulumi.listElement(" + arguments[0] + ", (" + arguments[1] + ").toInt())", nil
	case "singleOrNone":
		if len(arguments) != 1 {
			return "", fmt.Errorf("singleOrNone expects one argument")
		}
		return "pulumi.singleOrNone(" + arguments[0] + ")", nil
	case "secret":
		if len(arguments) != 1 {
			return "", fmt.Errorf("secret expects one argument")
		}
		return "pulumi.secret(" + arguments[0] + ")", nil
	case "unsecret":
		if len(arguments) != 1 {
			return "", fmt.Errorf("unsecret expects one argument")
		}
		return "pulumi.unsecret(" + arguments[0] + ")", nil
	case "cwd":
		return noArgumentBuiltin(expression.Name, arguments, "pulumi.currentWorkingDirectory()")
	case "rootDirectory":
		return noArgumentBuiltin(expression.Name, arguments, "pulumi.projectRootDirectory()")
	case "project":
		return noArgumentBuiltin(expression.Name, arguments, "pulumi.Deployment.instance.projectName")
	case "stack":
		return noArgumentBuiltin(expression.Name, arguments, "pulumi.Deployment.instance.stackName")
	case "organization":
		return noArgumentBuiltin(expression.Name, arguments, "pulumi.Deployment.instance.organizationName")
	case "fromBase64":
		return lowerOutputAwareBuiltin(expression, arguments, "pulumi.fromBase64")
	case "toBase64":
		return lowerOutputAwareBuiltin(expression, arguments, "pulumi.toBase64")
	case "sha1":
		return oneArgumentBuiltin(expression.Name, arguments, "pulumi.sha1Hash")
	case "readFile":
		return oneArgumentBuiltin(expression.Name, arguments, "pulumi.readTextFile")
	case "filebase64":
		return oneArgumentBuiltin(expression.Name, arguments, "pulumi.fileBase64")
	case "filebase64sha256":
		return oneArgumentBuiltin(expression.Name, arguments, "pulumi.fileBase64Sha256")
	case "entries":
		return lowerMapBuiltin(expression, arguments, "pulumi.mapEntries")
	case "notImplemented":
		return lowerNotImplementedBuiltin(arguments)
	case "getOutput":
		if len(arguments) != 2 {
			return "", fmt.Errorf("getOutput expects two arguments")
		}
		return arguments[0] + ".getOutput((" + arguments[1] + ").input())", nil
	case "pulumiResourceName":
		return resourceMetadataBuiltin(expression.Name, arguments, "getResourceName")
	case "pulumiResourceType":
		return resourceMetadataBuiltin(expression.Name, arguments, "getResourceType")
	case "min", "max":
		return lowerMinMaxBuiltin(expression.Name, arguments, expression.ExpandFinal)
	default:
		return "", fmt.Errorf("unsupported function %q", expression.Name)
	}
}

func resourceMetadataBuiltin(name string, arguments []string, getter string) (string, error) {
	if len(arguments) != 1 {
		return "", fmt.Errorf("%s expects one resource argument", name)
	}
	return arguments[0] + "." + getter + "()", nil
}
