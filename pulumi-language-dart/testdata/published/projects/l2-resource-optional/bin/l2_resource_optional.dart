import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_optionalprimitive/pulumi_optionalprimitive.dart' as optionalprimitive;
import 'package:pulumi_primitive/pulumi_primitive.dart' as primitive;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final unsetA = optionalprimitive.index.ResourceType('unsetA');
    final unsetB = optionalprimitive.index.ResourceType('unsetB', args: optionalprimitive.index.ResourceArgs(boolean: (unsetA.boolean).input(), float: (unsetA.float).input(), integer: (unsetA.integer).input(), string_: (unsetA.string_).input(), numberArray: (unsetA.numberArray).input(), booleanMap: (unsetA.booleanMap).input(), ));
    final setA = optionalprimitive.index.ResourceType('setA', args: optionalprimitive.index.ResourceArgs(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('hello').input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));
    final setB = optionalprimitive.index.ResourceType('setB', args: optionalprimitive.index.ResourceArgs(boolean: (setA.boolean).input(), float: (setA.float).input(), integer: (setA.integer).input(), string_: (setA.string_).input(), numberArray: (setA.numberArray).input(), booleanMap: (setA.booleanMap).input(), ));
    final sourcePrimitive = primitive.index.ResourceType('sourcePrimitive', args: primitive.index.ResourceArgs(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('hello').input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));
    final fromPrimitive = optionalprimitive.index.ResourceType('fromPrimitive', args: optionalprimitive.index.ResourceArgs(boolean: (sourcePrimitive.boolean).input(), float: (sourcePrimitive.float).input(), integer: (sourcePrimitive.integer).input(), string_: (sourcePrimitive.string_).input(), numberArray: (sourcePrimitive.numberArray).input(), booleanMap: (sourcePrimitive.booleanMap).input(), ));

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
