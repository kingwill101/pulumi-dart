import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;
import 'package:pulumi_simple/providers.dart' as simple_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = simple_providers.ProviderProvider('prov');
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(provider: prov, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
