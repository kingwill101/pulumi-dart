import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final source1 = pulumi_primitive_index.ResourceType('source1', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput((1).toDouble()), integer: pulumi.Input.asInput(2), string_: pulumi.Input.asInput('1234'), numberArray: pulumi.Input.asInput(<double>[(3).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'source': false}), ));
    final source2 = pulumi_primitive_index.ResourceType('source2', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput((1).toDouble()), integer: pulumi.Input.asInput(2), string_: pulumi.Input.asInput('true'), numberArray: pulumi.Input.asInput(<double>[(3).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'source': false}), ));
    final idMap = {'source1Token': source1.id, 'source2Token': source2.id};
    final sink1 = pulumi_primitive_index.ResourceType('sink1', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput(pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<String>((value) => (value).toString())), numberArray: pulumi.Input.asInput(pulumi.inputList<double>(<pulumi.Input<double>>[(pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source1Token'))).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())).input()]) as pulumi.Input<List<double>>), booleanMap: pulumi.Input.asInput(<String, bool>{'sink': false}), ));
    final sink2 = pulumi_primitive_index.ResourceType('sink2', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source2Token'))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput((1).toDouble()), integer: pulumi.Input.asInput(2), string_: pulumi.Input.asInput('abc'), numberArray: pulumi.Input.asInput(<double>[(3).toDouble()]), booleanMap: pulumi.Input.asInput(pulumi.inputMap<bool>(<String, pulumi.Input<bool>>{'sink': (pulumi.output(pulumi.output(idMap).apply<dynamic>((value) => pulumi.indexValue(value, 'source2Token'))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input()}) as pulumi.Input<Map<String, bool>>), ));

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
