import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final plainBool = config.requireBoolean('plainBool');
    final plainNumber = config.requireNumber('plainNumber');
    final plainInteger = (config.requireNumber('plainInteger')).toInt();
    final plainString = config.require('plainString');
    final plainNumericString = config.require('plainNumericString');
    final secretNumber = pulumi.secret(config.requireNumber('secretNumber')).apply<double>((value) => value as double);
    final secretInteger = pulumi.secret((config.requireNumber('secretInteger')).toInt()).apply<int>((value) => value as int);
    final secretString = pulumi.secret(config.require('secretString')).apply<String>((value) => value as String);
    final secretNumericString = pulumi.secret(config.require('secretNumericString')).apply<String>((value) => value as String);
    final plainValues = pulumi_primitive_index.ResourceType('plainValues', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(bool.parse(plainString)), float: pulumi.Input.asInput((plainInteger).toDouble()), integer: pulumi.Input.asInput(int.parse(plainNumericString)), string_: pulumi.Input.asInput((plainNumber).toString()), numberArray: pulumi.Input.asInput(<double>[(plainInteger).toDouble(), double.parse(plainNumericString), (plainNumber).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'fromBool': plainBool, 'fromString': bool.parse(plainString)}), ));
    final secretValues = pulumi_primitive_index.ResourceType('secretValues', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(secretString).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(secretInteger).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(secretNumericString).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(secretNumber).apply<String>((value) => (value).toString())), numberArray: pulumi.Input.asInput(<double>[(plainInteger).toDouble(), double.parse(plainNumericString), (plainNumber).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'fromBool': plainBool, 'fromString': bool.parse(plainString)}), ));
    final invokeResult = pulumi_primitive_index.invokeOutput(pulumi_primitive_index.InvokeArgs(boolean: (bool.parse(plainString)).input(), float: ((plainInteger).toDouble()).input(), integer: (int.parse(plainNumericString)).input(), string_: ((plainBool).toString()).input(), numberArray: (<double>[(plainInteger).toDouble(), double.parse(plainNumericString), (plainNumber).toDouble()]).input(), booleanMap: (<String, bool>{'fromBool': plainBool, 'fromString': bool.parse(plainString)}).input()));
    final invokeValues = pulumi_primitive_index.ResourceType('invokeValues', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(invokeResult.apply<dynamic>((value) => value.boolean)).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(invokeResult.apply<dynamic>((value) => value.float)).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(invokeResult.apply<dynamic>((value) => value.integer)).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(invokeResult.apply<dynamic>((value) => value.string_)).apply<String>((value) => (value).toString())), numberArray: pulumi.Input.asInput(pulumi.output(invokeResult.apply<dynamic>((value) => value.numberArray)).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(invokeResult.apply<dynamic>((value) => value.booleanMap)).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
