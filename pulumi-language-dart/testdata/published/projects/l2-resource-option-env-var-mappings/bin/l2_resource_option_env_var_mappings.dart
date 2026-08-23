import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/providers.dart' as simple_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = simple_providers.ProviderProvider('prov', options: pulumi.CustomResourceOptions(envVarMappings: {'MY_VAR': 'PROVIDER_VAR', 'OTHER_VAR': 'TARGET_VAR'}, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
