import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as primitive_index;

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
    final plainValues = primitive_index.ResourceType('plainValues', args: primitive_index.ResourceArgs(boolean: (bool.parse(plainString)).input(), float: ((plainInteger).toDouble()).input(), integer: (int.parse(plainNumericString)).input(), string_: ((plainNumber).toString()).input(), numberArray: ([(plainInteger).toDouble(), double.parse(plainNumericString), (plainNumber).toDouble()]).input(), booleanMap: ({'fromBool': plainBool, 'fromString': bool.parse(plainString)}).input(), ));
    final secretValues = primitive_index.ResourceType('secretValues', args: primitive_index.ResourceArgs(boolean: (pulumi.output(secretString).apply<bool>((value) => bool.parse(value))).input(), float: (pulumi.output(secretInteger).apply<double>((value) => (value).toDouble())).input(), integer: (pulumi.output(secretNumericString).apply<int>((value) => int.parse(value))).input(), string_: (pulumi.output(secretNumber).apply<String>((value) => (value).toString())).input(), numberArray: ([(plainInteger).toDouble(), double.parse(plainNumericString), (plainNumber).toDouble()]).input(), booleanMap: ({'fromBool': plainBool, 'fromString': bool.parse(plainString)}).input(), ));
    final invokeResult = primitive_index.invokeOutput(primitive_index.InvokeArgs(boolean: (bool.parse(plainString)).input(), float: ((plainInteger).toDouble()).input(), integer: (int.parse(plainNumericString)).input(), string_: ((plainBool).toString()).input(), numberArray: ([(plainInteger).toDouble(), double.parse(plainNumericString), (plainNumber).toDouble()]).input(), booleanMap: ({'fromBool': plainBool, 'fromString': bool.parse(plainString)}).input()));
    final invokeValues = primitive_index.ResourceType('invokeValues', args: primitive_index.ResourceArgs(boolean: (pulumi.output(invokeResult.apply((value) => value.boolean)).apply<bool>((value) => value as bool)).input(), float: (pulumi.output(invokeResult.apply((value) => value.float)).apply<double>((value) => (value).toDouble())).input(), integer: (pulumi.output(invokeResult.apply((value) => value.integer)).apply<int>((value) => value as int)).input(), string_: (pulumi.output(invokeResult.apply((value) => value.string_)).apply<String>((value) => value as String)).input(), numberArray: (pulumi.output(invokeResult.apply((value) => value.numberArray)).apply<List<double>>((value) => (value as List).cast<double>())).input(), booleanMap: (pulumi.output(invokeResult.apply((value) => value.booleanMap)).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
