import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final targetOnly = pulumi_simple_index.ResourceType('targetOnly', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final dep = pulumi_simple_index.ResourceType('dep', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final unrelated = pulumi_simple_index.ResourceType('unrelated', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(dependsOn: [dep], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
