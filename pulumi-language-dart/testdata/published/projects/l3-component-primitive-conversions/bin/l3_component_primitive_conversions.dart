import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class ConversionComponentArgs {
  final pulumi.Input<bool> boolean;
  final pulumi.Input<double> float;
  final pulumi.Input<int> integer;
  final pulumi.Input<String> string_;

  const ConversionComponentArgs({required this.boolean, required this.float, required this.integer, required this.string_, });

  Map<String, dynamic> toMap() => {'boolean': boolean, 'float': float, 'integer': integer, 'string_': string_, };
}

class ConversionComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> boolean;
  late final pulumi.Output<dynamic> float;
  late final pulumi.Output<dynamic> integer;
  late final pulumi.Output<dynamic> string_;

  ConversionComponent(String name, {required ConversionComponentArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:ConversionComponent', name, pulumi.Input.mapToInputs(args.toMap()), options) {
    final res = pulumi_primitive_index.ResourceType(name + '-res', args: pulumi_primitive_index.ResourceArgs(boolean: (pulumi.output(args.boolean).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), float: (pulumi.output(args.float).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())).input(), integer: (pulumi.output(args.integer).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())).input(), string_: (pulumi.output(args.string_).apply<String>((value) => (value).toString())).input(), numberArray: (<double>[(2).toDouble(), (42).toDouble(), (6.5).toDouble()]).input(), booleanMap: (<String, bool>{'fromBool': true, 'fromString': true}).input(), ), options: pulumi.CustomResourceOptions(parent: this, ));
    boolean = pulumi.output(res.boolean);
    float = pulumi.output(res.float);
    integer = pulumi.output(res.integer);
    string_ = pulumi.output(res.string_);
    registerOutputs({'boolean': boolean, 'float': float, 'integer': integer, 'string': string_, });
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
    final plainNumericString = config.require('plainNumericString');
    final secretNumber = pulumi.secret(config.requireNumber('secretNumber')).apply<double>((value) => value as double);
    final secretInteger = pulumi.secret((config.requireNumber('secretInteger')).toInt()).apply<int>((value) => value as int);
    final secretString = pulumi.secret(config.require('secretString')).apply<String>((value) => value as String);
    final secretNumericString = pulumi.secret(config.require('secretNumericString')).apply<String>((value) => value as String);
    final plainValues = ConversionComponent('plainValues', args: ConversionComponentArgs(boolean: (pulumi.output(plainString).apply<bool>((value) => bool.parse(value))).input(), float: (pulumi.output(plainInteger).apply<double>((value) => (value as num).toDouble())).input(), integer: (pulumi.output(plainNumericString).apply<int>((value) => int.parse(value))).input(), string_: (pulumi.output(plainNumber).apply<String>((value) => (value).toString())).input(), ));
    final secretValues = ConversionComponent('secretValues', args: ConversionComponentArgs(boolean: (pulumi.output(secretString).apply<bool>((value) => bool.parse(value))).input(), float: (pulumi.output(secretInteger).apply<double>((value) => (value as num).toDouble())).input(), integer: (pulumi.output(secretNumericString).apply<int>((value) => int.parse(value))).input(), string_: (pulumi.output(secretNumber).apply<String>((value) => (value).toString())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
