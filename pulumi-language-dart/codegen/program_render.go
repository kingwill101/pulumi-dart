package codegen

import (
	"fmt"
	"sort"
	"strings"
)

func renderDartProgram(program dartProgram) []byte {
	var body strings.Builder
	body.WriteString("import 'package:pulumi/pulumi.dart' as pulumi;\n\n")
	imports := map[string]dartProgramResource{}
	for _, resource := range program.Resources {
		if resource.Package != "" {
			key := resource.Package + "\x00" + resource.Module
			imports[key] = resource
		}
	}
	for _, imported := range program.Imports {
		key := imported.Package + "\x00" + imported.Module
		imports[key] = dartProgramResource{Package: imported.Package, Module: imported.Module}
	}
	collectDartComponentImports(imports, program.Components)
	importKeys := make([]string, 0, len(imports))
	for key := range imports {
		importKeys = append(importKeys, key)
	}
	sort.Strings(importKeys)
	for _, key := range importKeys {
		resource := imports[key]
		fmt.Fprintf(&body, "import 'package:%s/%s.dart' as %s;\n",
			resource.Package, resource.Module, programModuleAlias(resource.Package, resource.Module))
	}
	if len(importKeys) > 0 {
		body.WriteString("\n")
	}
	for _, component := range program.Components {
		body.WriteString(renderDartComponent(component))
	}
	body.WriteString("class GeneratedStack extends pulumi.Stack {\n")
	body.WriteString("  late final List<pulumi.OutputProperty> _outputProperties;\n\n")
	if program.NeedsAsyncInitialization {
		body.WriteString("  GeneratedStack();\n\n")
		body.WriteString("  Future<void> initialize() async {\n")
	} else {
		body.WriteString("  GeneratedStack() {\n")
	}
	if program.RequiresPulumiProvider {
		body.WriteString("    pulumi.ProviderResource('pulumi', 'default', null, null);\n")
	}
	if len(program.Configs) > 0 {
		body.WriteString("    final config = pulumi.Config();\n")
	}
	for _, reference := range program.ResourceReferences {
		fmt.Fprintf(
			&body,
			"    pulumi.ResourceReferenceRegistry.register(%s, (urn) => %s.%s.reference(urn));\n",
			dartStringLiteral(reference.Token),
			programModuleAlias(reference.Package, reference.Module),
			reference.ClassName,
		)
	}
	for _, statement := range program.Statements {
		if statement.Config != nil {
			fmt.Fprintf(&body, "    final %s = %s;\n", statement.Config.Name, statement.Config.Expression)
		}
		if statement.Local != nil {
			fmt.Fprintf(&body, "    final %s = %s;\n", statement.Local.Name, statement.Local.Expression)
		}
		if statement.Hook != nil {
			body.WriteString(renderDartProgramHook(*statement.Hook))
		}
		if statement.Resource != nil {
			body.WriteString(renderDartProgramResource(*statement.Resource))
		}
		if statement.Component != nil {
			body.WriteString(renderDartComponentInstance(*statement.Component))
		}
		body.WriteString(renderDartDeferredStatement(statement))
		if statement.RequiredPulumiVersion != "" {
			fmt.Fprintf(
				&body,
				"    pulumi.Deployment.instance.requirePulumiVersion(%s);\n",
				statement.RequiredPulumiVersion,
			)
		}
	}
	if len(program.Statements) > 0 {
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
	if program.NeedsAsyncInitialization {
		body.WriteString("  await pulumi.Deployment.runOrThrow(() async {\n")
		body.WriteString("    final stack = GeneratedStack();\n")
		body.WriteString("    await stack.initialize();\n")
		body.WriteString("  });\n")
	} else {
		body.WriteString("  await pulumi.Deployment.runOrThrow(() => GeneratedStack());\n")
	}
	body.WriteString("}\n")
	return []byte(body.String())
}
