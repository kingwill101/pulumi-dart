import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final source1 = primitive_index.ResourceType('source1', args: primitive_index.ResourceArgs(boolean: (false).input(), float: ((1).toDouble()).input(), integer: (2).input(), string_: ('1234').input(), numberArray: (<double>[(3).toDouble()]).input(), booleanMap: (<String, bool>{'source': false}).input(), ));
    final source2 = primitive_index.ResourceType('source2', args: primitive_index.ResourceArgs(boolean: (false).input(), float: ((1).toDouble()).input(), integer: (2).input(), string_: ('true').input(), numberArray: (<double>[(3).toDouble()]).input(), booleanMap: (<String, bool>{'source': false}).input(), ));
    final idMap = {'source1Token': source1.id, 'source2Token': source2.id};
    final sink1 = primitive_index.ResourceType('sink1', args: primitive_index.ResourceArgs(boolean: (false).input(), float: (pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())).input(), integer: (pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())).input(), string_: (pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<String>((value) => (value).toString())).input(), numberArray: (pulumi.inputList<double>(<pulumi.Input<double>>[(pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())).input()]) as pulumi.Input<List<double>>).input(), booleanMap: (<String, bool>{'sink': false}).input(), ));
    final sink2 = primitive_index.ResourceType('sink2', args: primitive_index.ResourceArgs(boolean: (pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source2Token'))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), float: ((1).toDouble()).input(), integer: (2).input(), string_: ('abc').input(), numberArray: (<double>[(3).toDouble()]).input(), booleanMap: (pulumi.inputMap<bool>(<String, pulumi.Input<bool>>{'sink': (pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source2Token'))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input()}) as pulumi.Input<Map<String, bool>>).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('ids', pulumi.output(idMap).apply<Object?>((value) => value)),
      pulumi.OutputProperty('base64', pulumi.output(pulumi.output(sink2.id).apply<dynamic>((value) => pulumi.toBase64(value))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
