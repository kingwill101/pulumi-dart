import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class PrimitiveComponentArgs {
  final pulumi.Input<List<double>> numberArray;
  final pulumi.Input<Map<String, bool>> booleanMap;

  const PrimitiveComponentArgs({required this.numberArray, required this.booleanMap, });

  Map<String, dynamic> toMap() => {'numberArray': numberArray, 'booleanMap': booleanMap, };
}

class PrimitiveComponent extends pulumi.ComponentResource {

  PrimitiveComponent(String name, {required PrimitiveComponentArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:PrimitiveComponent', name, pulumi.Input.mapToInputs(args.toMap()), options) {
    final res = pulumi_primitive_index.ResourceType(name + '-res', args: pulumi_primitive_index.ResourceArgs(boolean: (true).input(), float: ((3.5).toDouble()).input(), integer: (3).input(), string_: ('plain').input(), numberArray: (pulumi.output(args.numberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())).input(), booleanMap: (pulumi.output(args.booleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())).input(), ), options: pulumi.CustomResourceOptions(parent: this, ));
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
    final plain = PrimitiveComponent('plain', args: PrimitiveComponentArgs(numberArray: (pulumi.output(plainNumberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())).input(), booleanMap: (pulumi.output(plainBooleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())).input(), ));
    final secret = PrimitiveComponent('secret', args: PrimitiveComponentArgs(numberArray: (pulumi.output(secretNumberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())).input(), booleanMap: (pulumi.output(secretBooleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
