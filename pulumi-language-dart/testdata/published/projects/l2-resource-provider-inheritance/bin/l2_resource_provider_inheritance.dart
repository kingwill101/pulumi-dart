import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as primitive_index;
import 'package:pulumi_simple/index.dart' as simple_index;
import 'package:pulumi_simple/providers.dart' as simple_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provider = simple_providers.ProviderProvider('provider');
    final parent1 = simple_index.ResourceType('parent1', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(provider: provider, ));
    final child1 = simple_index.ResourceType('child1', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent1, ));
    final parent2 = primitive_index.ResourceType('parent2', args: primitive_index.ResourceArgs(boolean: (false).input(), float: ((0).toDouble()).input(), integer: (0).input(), string_: ('').input(), numberArray: (<double>[]).input(), booleanMap: (<String, bool>{}).input(), ));
    final child2 = simple_index.ResourceType('child2', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent2, ));
    final child3 = primitive_index.ResourceType('child3', args: primitive_index.ResourceArgs(boolean: (false).input(), float: ((0).toDouble()).input(), integer: (0).input(), string_: ('').input(), numberArray: (<double>[]).input(), booleanMap: (<String, bool>{}).input(), ), options: pulumi.CustomResourceOptions(parent: parent1, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
