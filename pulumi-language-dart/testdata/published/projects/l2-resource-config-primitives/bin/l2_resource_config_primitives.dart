import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/pulumi_primitive.dart' as primitive;

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

    final plain = primitive.index.ResourceType('plain', args: primitive.index.ResourceArgs(boolean: (plainBool).input(), float: ((plainNumber).toDouble()).input(), integer: (plainInteger).input(), string_: (plainString).input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));
    final secret = primitive.index.ResourceType('secret', args: primitive.index.ResourceArgs(boolean: (secretBool).input(), float: (secretNumber).input(), integer: (secretInteger).input(), string_: (secretString).input(), numberArray: ([(-2).toDouble(), (0).toDouble(), (2).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
