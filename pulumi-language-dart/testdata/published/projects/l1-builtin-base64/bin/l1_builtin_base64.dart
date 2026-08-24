import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final input = config.require('input');
    final bytes = pulumi.fromBase64(input);

    _outputProperties = [
      pulumi.OutputProperty('data', pulumi.output(bytes).apply<Object?>((value) => value)),
      pulumi.OutputProperty('roundtrip', pulumi.output(pulumi.toBase64(bytes)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
