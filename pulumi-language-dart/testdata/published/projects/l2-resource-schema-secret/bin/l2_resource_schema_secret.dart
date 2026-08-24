import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as pulumi_output_index;
import 'package:pulumi_output/providers.dart' as pulumi_output_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provElided = pulumi_output_providers.ProviderProvider('provElided', args: pulumi_output_providers.ProviderArgs(elideUnknowns: pulumi.Input.asInput(true), ));
    final provNotElided = pulumi_output_providers.ProviderProvider('provNotElided');
    final topLevelElided = pulumi_output_index.ResourceType('topLevelElided', args: pulumi_output_index.ResourceArgs(value: pulumi.Input.asInput((1).toDouble()), ), options: pulumi.CustomResourceOptions(provider: provElided, ));
    final topLevelNotElided = pulumi_output_index.ResourceType('topLevelNotElided', args: pulumi_output_index.ResourceArgs(value: pulumi.Input.asInput((1).toDouble()), ), options: pulumi.CustomResourceOptions(provider: provNotElided, ));

    _outputProperties = [
      pulumi.OutputProperty('topLevelElided', pulumi.output(topLevelElided.secretOutput).apply<Object?>((value) => value)),
      pulumi.OutputProperty('topLevelNotElided', pulumi.output(topLevelNotElided.secretOutput).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
