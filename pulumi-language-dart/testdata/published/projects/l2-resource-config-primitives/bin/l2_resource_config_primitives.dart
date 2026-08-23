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
    final secretBool = pulumi.secret(config.requireBoolean('secretBool')).apply<bool>((value) => value as bool);
    final secretNumber = pulumi.secret(config.requireNumber('secretNumber')).apply<double>((value) => value as double);
    final secretInteger = pulumi.secret((config.requireNumber('secretInteger')).toInt()).apply<int>((value) => value as int);
    final secretString = pulumi.secret(config.require('secretString')).apply<String>((value) => value as String);
    final plain = primitive_index.ResourceType('plain', args: primitive_index.ResourceArgs(boolean: (plainBool).input(), float: ((plainNumber).toDouble()).input(), integer: (plainInteger).input(), string_: (plainString).input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));
    final secret = primitive_index.ResourceType('secret', args: primitive_index.ResourceArgs(boolean: (pulumi.output(secretBool).apply<bool>((value) => value as bool)).input(), float: (pulumi.output(secretNumber).apply<double>((value) => (value).toDouble())).input(), integer: (pulumi.output(secretInteger).apply<int>((value) => value as int)).input(), string_: (pulumi.output(secretString).apply<String>((value) => value as String)).input(), numberArray: ([(-2).toDouble(), (0).toDouble(), (2).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
