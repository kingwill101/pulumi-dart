package codegen

import (
	"fmt"
	"strings"
)

func renderDartComponent(component dartProgramComponent) string {
	var body strings.Builder
	if len(component.Args) > 0 {
		fmt.Fprintf(&body, "class %sArgs {\n", component.Name)
		for _, arg := range component.Args {
			fmt.Fprintf(&body, "  final pulumi.Input<%s> %s;\n", arg.DartType, arg.Name)
		}
		fmt.Fprintf(&body, "\n  const %sArgs({", component.Name)
		for _, arg := range component.Args {
			if arg.Required {
				body.WriteString("required ")
			}
			fmt.Fprintf(&body, "this.%s, ", arg.Name)
		}
		body.WriteString("});\n\n  Map<String, dynamic> toMap() => {")
		for _, arg := range component.Args {
			wireName := arg.WireName
			if wireName == "" {
				wireName = arg.Name
			}
			fmt.Fprintf(&body, "%s: %s, ", dartStringLiteral(wireName), arg.Name)
		}
		body.WriteString("};\n}\n\n")
	}
	fmt.Fprintf(&body, "class %s extends pulumi.ComponentResource {\n", component.Name)
	for _, output := range component.Program.Outputs {
		fmt.Fprintf(&body, "  late final pulumi.Output<dynamic> %s;\n", propertyFieldName(output.Name, map[string]int{}))
	}
	fmt.Fprintf(&body, "\n  %s(String name, {", component.Name)
	if len(component.Args) > 0 {
		fmt.Fprintf(&body, "required %sArgs args, ", component.Name)
	}
	body.WriteString("pulumi.ComponentResourceOptions? options})\n      : super(")
	fmt.Fprintf(&body, "%s, name, ", dartStringLiteral("components:index:"+component.Name))
	body.WriteString("const {}, ")
	body.WriteString("options) {\n")
	body.WriteString(renderDartComponentStatements(component.Program))
	for _, output := range component.Program.Outputs {
		name := propertyFieldName(output.Name, map[string]int{})
		fmt.Fprintf(&body, "    %s = pulumi.output(%s);\n", name, output.Expression)
	}
	body.WriteString("    registerOutputs({")
	for _, output := range component.Program.Outputs {
		name := propertyFieldName(output.Name, map[string]int{})
		fmt.Fprintf(&body, "%s: %s, ", dartStringLiteral(output.Name), name)
	}
	body.WriteString("});\n  }\n}\n\n")
	return body.String()
}

func renderDartComponentStatements(program dartProgram) string {
	var body strings.Builder
	for _, statement := range program.Statements {
		if statement.Local != nil {
			fmt.Fprintf(&body, "    final %s = %s;\n", statement.Local.Name, statement.Local.Expression)
		}
		if statement.Resource != nil {
			body.WriteString(renderDartProgramResource(*statement.Resource))
		}
		if statement.Component != nil {
			body.WriteString(renderDartComponentInstance(*statement.Component))
		}
	}
	return body.String()
}

func renderDartComponentInstance(component dartProgramComponentInstance) string {
	if component.Range != nil {
		return renderRangedDartComponentInstance(component)
	}
	name := dartStringLiteral(component.LogicalName)
	if component.PrefixLogicalName {
		name = "name + " + dartStringLiteral("-"+component.LogicalName)
	}
	return "    final " + component.Name + " = " + renderDartComponentInstanceValue(component, name) + ";\n"
}

func renderDartComponentInstanceValue(component dartProgramComponentInstance, name string) string {
	var fields strings.Builder
	for _, input := range component.Inputs {
		fmt.Fprintf(&fields, "%s: pulumi.Input.asInput(%s), ", input.Name, input.Expression)
	}
	args := ""
	if len(component.Inputs) > 0 {
		args = fmt.Sprintf(", args: %sArgs(%s)", component.Class, fields.String())
	}
	options := renderDartComponentOptions(component.Options)
	return fmt.Sprintf("%s(%s%s%s)", component.Class, name, args, options)
}

func renderDartComponentOptions(options []dartProgramResourceOption) string {
	if len(options) == 0 {
		return ""
	}
	var fields strings.Builder
	for _, option := range options {
		fmt.Fprintf(&fields, "%s: %s, ", option.Name, option.Expression)
	}
	return ", options: pulumi.ComponentResourceOptions(" + fields.String() + ")"
}
