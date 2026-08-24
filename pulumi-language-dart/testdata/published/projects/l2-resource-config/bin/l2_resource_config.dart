import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config/index.dart' as pulumi_config_index;
import 'package:pulumi_config/providers.dart' as pulumi_config_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = pulumi_config_providers.ProviderProvider('prov', args: pulumi_config_providers.ProviderArgs(name: pulumi.Input.asInput('my config'), pluginDownloadURL: pulumi.Input.asInput('not the same as the pulumi resource option'), ));
    final res = pulumi_config_index.ResourceType('res', args: pulumi_config_index.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(prov.version).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
      pulumi.OutputProperty('pluginDownloadURL', pulumi.output(prov.pluginDownloadURL).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
