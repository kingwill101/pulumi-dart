import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('stackOutput', pulumi.output(pulumi.Deployment.instance.stackName).apply<Object?>((value) => value)),
      pulumi.OutputProperty('projectOutput', pulumi.output(pulumi.Deployment.instance.projectName).apply<Object?>((value) => value)),
      pulumi.OutputProperty('organizationOutput', pulumi.output(pulumi.Deployment.instance.organizationName).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
