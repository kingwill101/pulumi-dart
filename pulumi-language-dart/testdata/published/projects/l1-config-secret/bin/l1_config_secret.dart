import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final aNumber = pulumi.secret(config.requireNumber('aNumber')).apply<double>((value) => value as double);

    _outputProperties = [
      pulumi.OutputProperty('roundtrip', pulumi.output(aNumber).apply<Object?>((value) => value)),
      pulumi.OutputProperty('theSecretNumber', pulumi.output(pulumi.output([aNumber, 1.25]).apply<dynamic>((values) => (values[0] + values[1]))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
