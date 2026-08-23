import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;
import 'package:pulumi_simple/providers.dart' as simple_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provider = simple_providers.ProviderProvider('provider');
    final parent1 = simple_index.ResourceType('parent1', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(provider: provider, ));
    final child1 = simple_index.ResourceType('child1', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent1, ));
    final orphan1 = simple_index.ResourceType('orphan1', args: simple_index.ResourceArgs(value: (true).input(), ));
    final parent2 = simple_index.ResourceType('parent2', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(protect: true, retainOnDelete: true, ));
    final child2 = simple_index.ResourceType('child2', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent2, ));
    final child3 = simple_index.ResourceType('child3', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent2, protect: false, retainOnDelete: false, ));
    final orphan2 = simple_index.ResourceType('orphan2', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
