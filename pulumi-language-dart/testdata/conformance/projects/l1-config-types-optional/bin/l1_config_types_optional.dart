import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final names = config.getObject<List<Object?>>('names') ?? [null, 'hello', null];

    _outputProperties = [
      pulumi.OutputProperty('namesLength', pulumi.Output.create<Object?>((names).length)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
