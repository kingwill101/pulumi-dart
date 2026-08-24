import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class PrimitiveComponentArgs {
  final pulumi.Input<List<double>> numberArray;
  final pulumi.Input<Map<String, bool>> booleanMap;

  const PrimitiveComponentArgs({required this.numberArray, required this.booleanMap, });

  Map<String, dynamic> toMap() => {'numberArray': numberArray, 'booleanMap': booleanMap, };
}

class PrimitiveComponent extends pulumi.ComponentResource {

  PrimitiveComponent(String name, {required PrimitiveComponentArgs args, bool registerInputs = true, pulumi.ComponentResourceOptions? options})
      : super('components:index:PrimitiveComponent', name, registerInputs ? pulumi.Input.mapToInputs(args.toMap()) : const {}, options) {
    final res = pulumi_primitive_index.ResourceType(name + '-' + ('res'), args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.5).toDouble()), integer: pulumi.Input.asInput(3), string_: pulumi.Input.asInput('plain'), numberArray: pulumi.Input.asInput(pulumi.output(args.numberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(args.booleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())), ), options: pulumi.CustomResourceOptions(parent: this, ));
    registerOutputs({});
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final plainNumberArray = config.requireObject<List<dynamic>>('plainNumberArray');
    final plainBooleanMap = config.requireObject<Map<String, dynamic>>('plainBooleanMap');
    final secretNumberArray = pulumi.secret(config.requireObject<List<dynamic>>('secretNumberArray')).apply<List<dynamic>>((value) => value as List<dynamic>);
    final secretBooleanMap = pulumi.secret(config.requireObject<Map<String, dynamic>>('secretBooleanMap')).apply<Map<String, dynamic>>((value) => value as Map<String, dynamic>);
    final plain = PrimitiveComponent('plain', args: PrimitiveComponentArgs(numberArray: pulumi.Input.asInput(pulumi.output(plainNumberArray).apply<List<double>>((value) => (value as List).map<double>((item) => item is String ? double.parse(item) : (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(plainBooleanMap).apply<Map<String, bool>>((value) => Map<String, bool>.fromEntries((value as Map).entries.map((entry) => MapEntry(entry.key.toString(), entry.value is String ? bool.parse(entry.value) : entry.value as bool))))), ));
    final secret = PrimitiveComponent('secret', args: PrimitiveComponentArgs(numberArray: pulumi.Input.asInput(pulumi.output(secretNumberArray).apply<List<double>>((value) => (value as List).map<double>((item) => item is String ? double.parse(item) : (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(secretBooleanMap).apply<Map<String, bool>>((value) => Map<String, bool>.fromEntries((value as Map).entries.map((entry) => MapEntry(entry.key.toString(), entry.value is String ? bool.parse(entry.value) : entry.value as bool))))), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
