import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;
import 'package:pulumi_simple/providers.dart' as pulumi_simple_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provider = pulumi_simple_providers.ProviderProvider('provider');
    final parent1 = pulumi_simple_index.ResourceType('parent1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(provider: provider, ));
    final child1 = pulumi_simple_index.ResourceType('child1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent1, ));
    final orphan1 = pulumi_simple_index.ResourceType('orphan1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final parent2 = pulumi_simple_index.ResourceType('parent2', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(protect: true, retainOnDelete: true, ));
    final child2 = pulumi_simple_index.ResourceType('child2', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent2, ));
    final child3 = pulumi_simple_index.ResourceType('child3', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent2, protect: false, retainOnDelete: false, ));
    final orphan2 = pulumi_simple_index.ResourceType('orphan2', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
