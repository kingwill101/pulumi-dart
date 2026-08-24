import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_optionalprimitive/index.dart' as pulumi_optionalprimitive_index;
import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final unsetA = pulumi_optionalprimitive_index.ResourceType('unsetA');
    final unsetB = pulumi_optionalprimitive_index.ResourceType('unsetB', args: pulumi_optionalprimitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(unsetA.boolean).apply<bool?>((value) => value == null ? null : value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(unsetA.float).apply<double?>((value) => value == null ? null : value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(unsetA.integer).apply<int?>((value) => value == null ? null : value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(unsetA.string_).apply<String?>((value) => value == null ? null : (value).toString())), numberArray: pulumi.Input.asInput(pulumi.output(unsetA.numberArray).apply<List<double>?>((value) => value == null ? null : (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(unsetA.booleanMap).apply<Map<String, bool>?>((value) => value == null ? null : (value as Map).cast<String, bool>())), ));
    final setA = pulumi_optionalprimitive_index.ResourceType('setA', args: pulumi_optionalprimitive_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.14).toDouble()), integer: pulumi.Input.asInput(42), string_: pulumi.Input.asInput('hello'), numberArray: pulumi.Input.asInput(<double>[(-1).toDouble(), (0).toDouble(), (1).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'t': true, 'f': false}), ));
    final setB = pulumi_optionalprimitive_index.ResourceType('setB', args: pulumi_optionalprimitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(setA.boolean).apply<bool?>((value) => value == null ? null : value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(setA.float).apply<double?>((value) => value == null ? null : value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(setA.integer).apply<int?>((value) => value == null ? null : value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(setA.string_).apply<String?>((value) => value == null ? null : (value).toString())), numberArray: pulumi.Input.asInput(pulumi.output(setA.numberArray).apply<List<double>?>((value) => value == null ? null : (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(setA.booleanMap).apply<Map<String, bool>?>((value) => value == null ? null : (value as Map).cast<String, bool>())), ));
    final sourcePrimitive = pulumi_primitive_index.ResourceType('sourcePrimitive', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.14).toDouble()), integer: pulumi.Input.asInput(42), string_: pulumi.Input.asInput('hello'), numberArray: pulumi.Input.asInput(<double>[(-1).toDouble(), (0).toDouble(), (1).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'t': true, 'f': false}), ));
    final fromPrimitive = pulumi_optionalprimitive_index.ResourceType('fromPrimitive', args: pulumi_optionalprimitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(sourcePrimitive.boolean).apply<bool?>((value) => value == null ? null : value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(sourcePrimitive.float).apply<double?>((value) => value == null ? null : value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(sourcePrimitive.integer).apply<int?>((value) => value == null ? null : value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(sourcePrimitive.string_).apply<String?>((value) => value == null ? null : (value).toString())), numberArray: pulumi.Input.asInput(pulumi.output(sourcePrimitive.numberArray).apply<List<double>?>((value) => value == null ? null : (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(sourcePrimitive.booleanMap).apply<Map<String, bool>?>((value) => value == null ? null : (value as Map).cast<String, bool>())), ));

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
