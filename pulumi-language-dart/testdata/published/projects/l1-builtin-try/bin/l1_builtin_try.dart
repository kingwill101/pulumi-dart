import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aMap = config.requireObject<Map<String, dynamic>>('aMap');
    final aSecretMap = pulumi.secret(aMap);
    final anObject = config.requireObject<dynamic>('anObject');
    final aSecretObject = pulumi.secret(anObject);

    _outputProperties = [
      pulumi.OutputProperty('plainTrySuccess', pulumi.output(pulumi.tryValue(() => pulumi.indexValue(aMap, 'a'), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('plainTryFailure', pulumi.output(pulumi.tryValue(() => pulumi.indexValue(aMap, 'b'), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputTrySuccess', pulumi.output(pulumi.tryValue(() => pulumi.output(aSecretMap).apply<dynamic>((value) => pulumi.indexValue(value, 'a')), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputTryFailure', pulumi.output(pulumi.tryValue(() => pulumi.output(aSecretMap).apply<dynamic>((value) => pulumi.indexValue(value, 'b')), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('dynamicTrySuccess', pulumi.output(pulumi.tryValue(() => pulumi.indexValue(anObject, 'a'), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('dynamicTryFailure', pulumi.output(pulumi.tryValue(() => pulumi.indexValue(anObject, 'b'), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputDynamicTrySuccess', pulumi.output(pulumi.tryValue(() => pulumi.output(aSecretObject).apply<dynamic>((value) => pulumi.indexValue(value, 'a')), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputDynamicTryFailure', pulumi.output(pulumi.tryValue(() => pulumi.output(aSecretObject).apply<dynamic>((value) => pulumi.indexValue(value, 'b')), () => 'fallback')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('plainTryNull', pulumi.output([pulumi.tryValue(() => pulumi.indexValue(anObject, 'opt'), () => 'fallback')]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outputTryNull', pulumi.output([pulumi.tryValue(() => pulumi.output(aSecretObject).apply<dynamic>((value) => pulumi.indexValue(value, 'opt')), () => 'fallback')]).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
