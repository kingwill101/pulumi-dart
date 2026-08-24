import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class ConversionComponentArgs {
  final pulumi.Input<bool> boolean;
  final pulumi.Input<double> float;
  final pulumi.Input<int> integer;
  final pulumi.Input<String> string_;

  const ConversionComponentArgs({required this.boolean, required this.float, required this.integer, required this.string_, });

  Map<String, dynamic> toMap() => {'boolean': boolean, 'float': float, 'integer': integer, 'string': string_, };
}

class ConversionComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> boolean;
  late final pulumi.Output<dynamic> float;
  late final pulumi.Output<dynamic> integer;
  late final pulumi.Output<dynamic> string_;

  ConversionComponent(String name, {required ConversionComponentArgs args, bool registerInputs = true, pulumi.ComponentResourceOptions? options})
      : super('components:index:ConversionComponent', name, registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}, options) {
    final res = pulumi_primitive_index.ResourceType(name + '-' + ('res'), args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(args.boolean).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(args.float).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(args.integer).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(args.string_).apply<String>((value) => (value).toString())), numberArray: pulumi.Input.asInput(<double>[(2).toDouble(), (42).toDouble(), (6.5).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'fromBool': true, 'fromString': true}), ), options: pulumi.CustomResourceOptions(parent: this, ));
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
    final plainValues = ConversionComponent('plainValues', args: ConversionComponentArgs(boolean: pulumi.Input.asInput(pulumi.output(plainString).apply<bool>((value) => bool.parse(value))), float: pulumi.Input.asInput(pulumi.output(plainInteger).apply<double>((value) => (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(plainNumericString).apply<int>((value) => int.parse(value))), string_: pulumi.Input.asInput(pulumi.output(plainNumber).apply<String>((value) => (value).toString())), ));
    final secretValues = ConversionComponent('secretValues', args: ConversionComponentArgs(boolean: pulumi.Input.asInput(pulumi.output(secretString).apply<bool>((value) => bool.parse(value))), float: pulumi.Input.asInput(pulumi.output(secretInteger).apply<double>((value) => (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(secretNumericString).apply<int>((value) => int.parse(value))), string_: pulumi.Input.asInput(pulumi.output(secretNumber).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
