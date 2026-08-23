import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config/index.dart' as config_index;
import 'package:pulumi_config/providers.dart' as config_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = config_providers.ProviderProvider('prov', args: config_providers.ProviderArgs(name: ('my config').input(), pluginDownloadURL: ('not the same as the pulumi resource option').input(), ));
    final res = config_index.ResourceType('res', args: config_index.ResourceArgs(text: (pulumi.output(prov.version).apply<String>((value) => (value).toString())).input(), ));

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
