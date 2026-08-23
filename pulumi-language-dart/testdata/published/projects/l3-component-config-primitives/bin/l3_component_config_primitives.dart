import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class PrimitiveComponentArgs {
  final pulumi.Input<bool> boolean;
  final pulumi.Input<double> float;
  final pulumi.Input<int> integer;
  final pulumi.Input<String> string_;

  const PrimitiveComponentArgs({required this.boolean, required this.float, required this.integer, required this.string_, });

  Map<String, dynamic> toMap() => {'boolean': boolean, 'float': float, 'integer': integer, 'string_': string_, };
}

class PrimitiveComponent extends pulumi.ComponentResource {

  PrimitiveComponent(String name, {required PrimitiveComponentArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:PrimitiveComponent', name, pulumi.Input.mapToInputs(args.toMap()), options) {
    final res = pulumi_primitive_index.ResourceType(name + '-res', args: pulumi_primitive_index.ResourceArgs(boolean: (pulumi.output(args.boolean).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), float: (pulumi.output(args.float).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())).input(), integer: (pulumi.output(args.integer).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())).input(), string_: (pulumi.output(args.string_).apply<String>((value) => (value).toString())).input(), numberArray: (<double>[(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: (<String, bool>{'t': true, 'f': false}).input(), ), options: pulumi.CustomResourceOptions(parent: this, ));
    registerOutputs({});
  }
}

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
    final plain = PrimitiveComponent('plain', args: PrimitiveComponentArgs(boolean: (pulumi.output(plainBool).apply<bool>((value) => value as bool)).input(), float: (pulumi.output(plainNumber).apply<double>((value) => (value as num).toDouble())).input(), integer: (pulumi.output(plainInteger).apply<int>((value) => value as int)).input(), string_: (pulumi.output(plainString).apply<String>((value) => value as String)).input(), ));
    final secret = PrimitiveComponent('secret', args: PrimitiveComponentArgs(boolean: (pulumi.output(secretBool).apply<bool>((value) => value as bool)).input(), float: (pulumi.output(secretNumber).apply<double>((value) => (value as num).toDouble())).input(), integer: (pulumi.output(secretInteger).apply<int>((value) => value as int)).input(), string_: (pulumi.output(secretString).apply<String>((value) => value as String)).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
