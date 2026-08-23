package codegen

import (
	"fmt"
	"strings"
)

func renderDartProgram(program dartProgram) []byte {
	var body strings.Builder
	body.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n\n")
	body.WriteString("class GeneratedStack extends pulumi.Stack {\n")
	body.WriteString("  late final List<pulumi.OutputProperty> _outputProperties;\n\n")
	body.WriteString("  GeneratedStack() {\n")
	if len(program.Configs) > 0 {
		body.WriteString("    final config = pulumi.Config();\n")
		for _, config := range program.Configs {
			fmt.Fprintf(&body, "    final %s = %s;\n", config.Name, config.Expression)
		}
		body.WriteString("\n")
	}
	for _, local := range program.Locals {
		fmt.Fprintf(&body, "    final %s = %s;\n", local.Name, local.Expression)
	}
	if len(program.Locals) > 0 {
		body.WriteString("\n")
	}
	body.WriteString("    _outputProperties = [\n")
	for _, output := range program.Outputs {
		fmt.Fprintf(
			&body,
			"      pulumi.OutputProperty(%s, pulumi.Output.create<Object?>(%s)),\n",
			dartStringLiteral(output.Name),
			output.Expression,
		)
	}
	body.WriteString("    ];\n")
	body.WriteString("  }\n\n")
	body.WriteString("  @override\n")
	body.WriteString("  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;\n")
	body.WriteString("}\n\n")
	body.WriteString("Future<void> main() async {\n")
	body.WriteString("  await pulumi.Deployment.runOrThrow(() => GeneratedStack());\n")
	body.WriteString("}\n")
	return []byte(body.String())
}
