import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_optional_primitive_ref/index.dart' as optional_primitive_ref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final setRes = optional_primitive_ref_index.ResourceType('setRes', args: optional_primitive_ref_index.ResourceArgs(data: (optional_primitive_ref_index.Data(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('hello').input(), numberArray: (<double>[(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: (<String, bool>{'t': true, 'f': false}).input())).input(), optionalData: (optional_primitive_ref_index.Data(string_: ('optional parent').input())).input(), ));
    final unsetRes = optional_primitive_ref_index.ResourceType('unsetRes', args: optional_primitive_ref_index.ResourceArgs(data: (optional_primitive_ref_index.Data()).input(), ));
    final fromNestedOptional = optional_primitive_ref_index.ResourceType('fromNestedOptional', args: optional_primitive_ref_index.ResourceArgs(data: (optional_primitive_ref_index.Data(string_: (pulumi.output(setRes.optionalData.string_).apply<String?>((value) => value == null ? null : (value).toString())).input())).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('setBoolean', pulumi.output(setRes.data.boolean).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setFloat', pulumi.output(setRes.data.float).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setInteger', pulumi.output(setRes.data.integer).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setString', pulumi.output(setRes.data.string_).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setNumberArray', pulumi.output(setRes.data.numberArray).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setBooleanMap', pulumi.output(setRes.data.booleanMap).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetBoolean', pulumi.output(pulumi.output(pulumi.output([unsetRes.data.boolean, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetFloat', pulumi.output(pulumi.output(pulumi.output([unsetRes.data.float, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetInteger', pulumi.output(pulumi.output(pulumi.output([unsetRes.data.integer, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetString', pulumi.output(pulumi.output(pulumi.output([unsetRes.data.string_, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetNumberArray', pulumi.output(pulumi.output(pulumi.output([unsetRes.data.numberArray, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetBooleanMap', pulumi.output(pulumi.output(pulumi.output([unsetRes.data.booleanMap, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
