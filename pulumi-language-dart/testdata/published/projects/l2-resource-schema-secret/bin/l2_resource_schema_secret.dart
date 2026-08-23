import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as output_index;
import 'package:pulumi_output/providers.dart' as output_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provElided = output_providers.ProviderProvider('provElided', args: output_providers.ProviderArgs(elideUnknowns: (true).input(), ));
    final provNotElided = output_providers.ProviderProvider('provNotElided');
    final topLevelElided = output_index.ResourceType('topLevelElided', args: output_index.ResourceArgs(value: ((1).toDouble()).input(), ));
    final topLevelNotElided = output_index.ResourceType('topLevelNotElided', args: output_index.ResourceArgs(value: ((1).toDouble()).input(), ));

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
