import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;
import 'package:pulumi_simple/providers.dart' as pulumi_simple_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provider = pulumi_simple_providers.ProviderProvider('provider');
    final parent1 = pulumi_simple_index.ResourceType('parent1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(provider: provider, ));
    final child1 = pulumi_simple_index.ResourceType('child1', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent1, ));
    final parent2 = pulumi_primitive_index.ResourceType('parent2', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput((0).toDouble()), integer: pulumi.Input.asInput(0), string_: pulumi.Input.asInput(''), numberArray: pulumi.Input.asInput(<double>[]), booleanMap: pulumi.Input.asInput(<String, bool>{}), ));
    final child2 = pulumi_simple_index.ResourceType('child2', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent2, ));
    final child3 = pulumi_primitive_index.ResourceType('child3', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput((0).toDouble()), integer: pulumi.Input.asInput(0), string_: pulumi.Input.asInput(''), numberArray: pulumi.Input.asInput(<double>[]), booleanMap: pulumi.Input.asInput(<String, bool>{}), ), options: pulumi.CustomResourceOptions(parent: parent1, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
