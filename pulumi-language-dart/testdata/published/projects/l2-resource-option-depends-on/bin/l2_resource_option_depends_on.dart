import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final noDependsOn = pulumi_simple_index.ResourceType('noDependsOn', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final withDependsOn = pulumi_simple_index.ResourceType('withDependsOn', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(false), ), options: pulumi.CustomResourceOptions(dependsOn: [noDependsOn], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
