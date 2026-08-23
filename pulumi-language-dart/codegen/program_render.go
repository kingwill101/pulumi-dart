package codegen

import (
	"fmt"
	"sort"
	"strings"
)

func renderDartProgram(program dartProgram) []byte {
	var body strings.Builder
	body.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n\n")
	packages := map[string]struct{}{}
	for _, resource := range program.Resources {
		if resource.Package != "" {
			packages[resource.Package] = struct{}{}
		}
	}
	packageNames := make([]string, 0, len(packages))
	for name := range packages {
		packageNames = append(packageNames, name)
	}
	sort.Strings(packageNames)
	for _, name := range packageNames {
		packageName := "pulumi_" + strings.ReplaceAll(name, "-", "_")
		fmt.Fprintf(&body, "import 'package:%s/%s.dart' as %s;\n", packageName, packageName, name)
	}
	if len(packageNames) > 0 {
		body.WriteString("\n")
	}
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
	for _, version := range program.RequiredPulumiVersions {
		fmt.Fprintf(&body, "    pulumi.Deployment.instance.requirePulumiVersion(%s);\n", version)
	}
	if len(program.RequiredPulumiVersions) > 0 {
		body.WriteString("\n")
	}
	for _, local := range program.Locals {
		fmt.Fprintf(&body, "    final %s = %s;\n", local.Name, local.Expression)
	}
	if len(program.Locals) > 0 {
		body.WriteString("\n")
	}
	for _, resource := range program.Resources {
		body.WriteString(renderDartProgramResource(resource))
	}
	if len(program.Resources) > 0 {
		body.WriteString("\n")
	}
	body.WriteString("    _outputProperties = [\n")
	for _, output := range program.Outputs {
		fmt.Fprintf(
			&body,
			"      pulumi.OutputProperty(%s, pulumi.output(%s).apply<Object?>((value) => value)),\n",
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
