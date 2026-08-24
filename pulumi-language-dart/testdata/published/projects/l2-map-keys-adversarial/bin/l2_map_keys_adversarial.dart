import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_primitive_index.ResourceType('res', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput((2.17).toDouble()), integer: pulumi.Input.asInput(-12), string_: pulumi.Input.asInput('adversarial'), numberArray: pulumi.Input.asInput(<double>[(0).toDouble(), (1).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'__type': true, '__internal': false, '__provider': true, '__version': false, '': true, 'Some \${common} "characters" \'that\' need escaping: \\ (backslash), \t (tab), \u001b (escape), \u0007 (bell), \u0000 (null), 󠀡 (tag space)': false, 'Format and glob specifiers: %percent ...ellipsis {open }close *asterisk ?question ,comma &&and ||or !not =>arrow ==equal :colon /slash': true}), ));
    final invokeResult = pulumi_primitive_index.invokeOutput(pulumi_primitive_index.InvokeArgs(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('adversarial').input(), numberArray: (<double>[(0).toDouble(), (1).toDouble()]).input(), booleanMap: (<String, bool>{'__type': true, '__internal': false, '__provider': true, '__version': false, '': true, 'Some \${common} "characters" \'that\' need escaping: \\ (backslash), \t (tab), \u001b (escape), \u0007 (bell), \u0000 (null), 󠀡 (tag space)': false, 'Format and glob specifiers: %percent ...ellipsis {open }close *asterisk ?question ,comma &&and ||or !not =>arrow ==equal :colon /slash': true}).input()));

    _outputProperties = [
      pulumi.OutputProperty('resourceBooleanMap', pulumi.output(res.booleanMap).apply<Object?>((value) => value)),
      pulumi.OutputProperty('invokeBooleanMap', pulumi.output(invokeResult.apply<dynamic>((value) => value.booleanMap)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
