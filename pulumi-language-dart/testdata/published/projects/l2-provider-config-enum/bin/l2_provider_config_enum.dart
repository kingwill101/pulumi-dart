import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_enum/index.dart' as config_enum_index;
import 'package:pulumi_config_enum/providers.dart' as config_enum_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = config_enum_providers.ProviderProvider('prov', args: config_enum_providers.ProviderArgs(aString: ('hello').input(), aEnum: (config_enum_index.MyEnum.fromValue('two')).input(), ));
    final res = config_enum_index.ResourceType('res', args: config_enum_index.ResourceArgs(theString: (pulumi.output(prov.aString).apply<String>((value) => (value).toString())).input(), theEnum: (prov.aEnum).input(), ), options: pulumi.CustomResourceOptions(provider: prov, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
