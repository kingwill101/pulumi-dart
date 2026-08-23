import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final ref = pulumi.StackReference('ref', args: pulumi.StackReferenceArgs(name: ('organization/other/dev').input()));

    _outputProperties = [
      pulumi.OutputProperty('plain', pulumi.output(ref.getOutput(('plain').input())).apply<Object?>((value) => value)),
      pulumi.OutputProperty('secret', pulumi.output(ref.getOutput(('secret').input())).apply<Object?>((value) => value)),
      pulumi.OutputProperty('secret_unsecret', pulumi.output(pulumi.unsecret(ref.getOutput(('secret').input()))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
