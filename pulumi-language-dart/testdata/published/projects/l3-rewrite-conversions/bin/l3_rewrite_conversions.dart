import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class ConvertedArgs {
  final pulumi.Input<bool> boolean;
  final pulumi.Input<double> float;
  final pulumi.Input<int> integer;
  final pulumi.Input<String> string_;
  final pulumi.Input<List<double>> numberArray;
  final pulumi.Input<Map<String, bool>> booleanMap;

  const ConvertedArgs({required this.boolean, required this.float, required this.integer, required this.string_, required this.numberArray, required this.booleanMap, });

  Map<String, dynamic> toMap() => {'boolean': boolean, 'float': float, 'integer': integer, 'string': string_, 'numberArray': numberArray, 'booleanMap': booleanMap, };
}

class Converted extends pulumi.ComponentResource {

  Converted(String name, {required ConvertedArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:Converted', name, pulumi.Input.mapToInputs(args.toMap()), options) {
    final res = pulumi_primitive_index.ResourceType(name + '-' + ('res'), args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(pulumi.output(args.boolean).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), float: pulumi.Input.asInput(pulumi.output(args.float).apply<double>((value) => value is String ? double.parse((value).toString()) : (value as num).toDouble())), integer: pulumi.Input.asInput(pulumi.output(args.integer).apply<int>((value) => value is String ? int.parse((value).toString()) : (value as num).toInt())), string_: pulumi.Input.asInput(pulumi.output(args.string_).apply<String>((value) => (value).toString())), numberArray: pulumi.Input.asInput(pulumi.output(args.numberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(args.booleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())), ), options: pulumi.CustomResourceOptions(parent: this, ));
    registerOutputs({});
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final direct = pulumi_primitive_index.ResourceType('direct', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(bool.parse('true')), float: pulumi.Input.asInput(double.parse('3.14')), integer: pulumi.Input.asInput(int.parse('42')), string_: pulumi.Input.asInput((false).toString()), numberArray: pulumi.Input.asInput(<double>[double.parse('-1'), double.parse('0'), double.parse('1')]), booleanMap: pulumi.Input.asInput(<String, bool>{'t': bool.parse('true'), 'f': bool.parse('false')}), ));
    final converted = Converted('converted', args: ConvertedArgs(boolean: (pulumi.output('false').apply<bool>((value) => bool.parse(value))).input(), float: (pulumi.output('2.5').apply<double>((value) => double.parse(value))).input(), integer: (pulumi.output('7').apply<int>((value) => int.parse(value))).input(), string_: (pulumi.output(true).apply<String>((value) => (value).toString())).input(), numberArray: (pulumi.output(['10', '11']).apply<List<double>>((value) => (value as List).map<double>((item) => item is String ? double.parse(item) : (item as num).toDouble()).toList())).input(), booleanMap: (pulumi.output({'left': 'true', 'right': 'false'}).apply<Map<String, bool>>((value) => Map<String, bool>.fromEntries((value as Map).entries.map((entry) => MapEntry(entry.key.toString(), entry.value is String ? bool.parse(entry.value) : entry.value as bool))))).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
