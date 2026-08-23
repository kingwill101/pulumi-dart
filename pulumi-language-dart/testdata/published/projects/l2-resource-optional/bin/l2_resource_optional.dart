import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_optionalprimitive/index.dart' as optionalprimitive_index;
import 'package:pulumi_primitive/index.dart' as primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final unsetA = optionalprimitive_index.ResourceType('unsetA');
    final unsetB = optionalprimitive_index.ResourceType('unsetB', args: optionalprimitive_index.ResourceArgs(boolean: (pulumi.output(unsetA.boolean).apply<bool?>((value) => value == null ? null : value as bool)).input(), float: (pulumi.output(unsetA.float).apply<double?>((value) => value == null ? null : (value).toDouble())).input(), integer: (pulumi.output(unsetA.integer).apply<int?>((value) => value == null ? null : value as int)).input(), string_: (pulumi.output(unsetA.string_).apply<String?>((value) => value == null ? null : (value).toString())).input(), numberArray: (pulumi.output(unsetA.numberArray).apply<List<double>?>((value) => value == null ? null : (value as List).cast<double>())).input(), booleanMap: (pulumi.output(unsetA.booleanMap).apply<Map<String, bool>?>((value) => value == null ? null : (value as Map).cast<String, bool>())).input(), ));
    final setA = optionalprimitive_index.ResourceType('setA', args: optionalprimitive_index.ResourceArgs(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('hello').input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));
    final setB = optionalprimitive_index.ResourceType('setB', args: optionalprimitive_index.ResourceArgs(boolean: (pulumi.output(setA.boolean).apply<bool?>((value) => value == null ? null : value as bool)).input(), float: (pulumi.output(setA.float).apply<double?>((value) => value == null ? null : (value).toDouble())).input(), integer: (pulumi.output(setA.integer).apply<int?>((value) => value == null ? null : value as int)).input(), string_: (pulumi.output(setA.string_).apply<String?>((value) => value == null ? null : (value).toString())).input(), numberArray: (pulumi.output(setA.numberArray).apply<List<double>?>((value) => value == null ? null : (value as List).cast<double>())).input(), booleanMap: (pulumi.output(setA.booleanMap).apply<Map<String, bool>?>((value) => value == null ? null : (value as Map).cast<String, bool>())).input(), ));
    final sourcePrimitive = primitive_index.ResourceType('sourcePrimitive', args: primitive_index.ResourceArgs(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('hello').input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));
    final fromPrimitive = optionalprimitive_index.ResourceType('fromPrimitive', args: optionalprimitive_index.ResourceArgs(boolean: (pulumi.output(sourcePrimitive.boolean).apply<bool?>((value) => value == null ? null : value as bool)).input(), float: (pulumi.output(sourcePrimitive.float).apply<double?>((value) => value == null ? null : (value).toDouble())).input(), integer: (pulumi.output(sourcePrimitive.integer).apply<int?>((value) => value == null ? null : value as int)).input(), string_: (pulumi.output(sourcePrimitive.string_).apply<String?>((value) => value == null ? null : value as String)).input(), numberArray: (pulumi.output(sourcePrimitive.numberArray).apply<List<double>?>((value) => value == null ? null : (value as List).cast<double>())).input(), booleanMap: (pulumi.output(sourcePrimitive.booleanMap).apply<Map<String, bool>?>((value) => value == null ? null : (value as Map).cast<String, bool>())).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('unsetBoolean', pulumi.output(pulumi.output(pulumi.output([unsetB.boolean, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetFloat', pulumi.output(pulumi.output(pulumi.output([unsetB.float, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetInteger', pulumi.output(pulumi.output(pulumi.output([unsetB.integer, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetString', pulumi.output(pulumi.output(pulumi.output([unsetB.string_, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetNumberArray', pulumi.output(pulumi.output(pulumi.output([unsetB.numberArray, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unsetBooleanMap', pulumi.output(pulumi.output(pulumi.output([unsetB.booleanMap, null]).apply<dynamic>((values) => (values[0] == values[1]))).apply<dynamic>((value) => value ? 'null' : 'not null')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setBoolean', pulumi.output(setB.boolean).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setFloat', pulumi.output(setB.float).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setInteger', pulumi.output(setB.integer).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setString', pulumi.output(setB.string_).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setNumberArray', pulumi.output(setB.numberArray).apply<Object?>((value) => value)),
      pulumi.OutputProperty('setBooleanMap', pulumi.output(setB.booleanMap).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
