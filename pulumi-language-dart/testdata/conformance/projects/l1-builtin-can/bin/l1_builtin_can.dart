import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aMap = config.requireObject<Map<String, dynamic>>('aMap');
    final anObject = config.requireObject<dynamic>('anObject');

    final aSecretMap = pulumi.secret(aMap);
    final aSecretObject = pulumi.secret(anObject);

    _outputProperties = [
      pulumi.OutputProperty('plainTrySuccess', pulumi.output(pulumi.canValue(() => pulumi.indexValue(aMap, 'a'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('plainTryFailure', pulumi.output(pulumi.canValue(() => pulumi.indexValue(aMap, 'b'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputTrySuccess', pulumi.output(pulumi.canValue(() => pulumi.output(aSecretMap).apply<dynamic>((value) => pulumi.indexValue(value, 'a')))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputTryFailure', pulumi.output(pulumi.canValue(() => pulumi.output(aSecretMap).apply<dynamic>((value) => pulumi.indexValue(value, 'b')))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('dynamicTrySuccess', pulumi.output(pulumi.canValue(() => pulumi.indexValue(anObject, 'a'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('dynamicTryFailure', pulumi.output(pulumi.canValue(() => pulumi.indexValue(anObject, 'b'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputDynamicTrySuccess', pulumi.output(pulumi.canValue(() => pulumi.output(aSecretObject).apply<dynamic>((value) => pulumi.indexValue(value, 'a')))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputDynamicTryFailure', pulumi.output(pulumi.canValue(() => pulumi.output(aSecretObject).apply<dynamic>((value) => pulumi.indexValue(value, 'b')))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('plainTryNull', pulumi.output(pulumi.canValue(() => pulumi.indexValue(anObject, 'opt'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputTryNull', pulumi.output(pulumi.canValue(() => pulumi.output(aSecretObject).apply<dynamic>((value) => pulumi.indexValue(value, 'opt')))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
