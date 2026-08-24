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
    final secretBool = pulumi.secret(config.requireBoolean('secretBool')).apply<bool>((value) => value as bool);
    final secretNumber = pulumi.secret(config.requireNumber('secretNumber')).apply<double>((value) => value as double);
    final secretInteger = pulumi.secret((config.requireNumber('secretInteger')).toInt()).apply<int>((value) => value as int);
    final secretString = pulumi.secret(config.require('secretString')).apply<String>((value) => value as String);
    final plain = pulumi_primitive_index.ResourceType('plain', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(plainBool), float: pulumi.Input.asInput((plainNumber).toDouble()), integer: pulumi.Input.asInput(plainInteger), string_: pulumi.Input.asInput(plainString), numberArray: pulumi.Input.asInput(<double>[(-1).toDouble(), (0).toDouble(), (1).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'t': true, 'f': false}), ));
    final secret = pulumi_primitive_index.ResourceType('secret', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(secretBool).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(secretNumber).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(secretInteger).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(secretString).apply<String>((value) => (value).toString())), numberArray: pulumi.Input.asInput(<double>[(-2).toDouble(), (0).toDouble(), (2).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'t': true, 'f': false}), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
