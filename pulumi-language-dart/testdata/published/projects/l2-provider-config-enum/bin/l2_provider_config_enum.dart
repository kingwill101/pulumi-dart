import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config_enum/index.dart' as pulumi_config_enum_index;
import 'package:pulumi_config_enum/providers.dart' as pulumi_config_enum_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = pulumi_config_enum_providers.ProviderProvider('prov', args: pulumi_config_enum_providers.ProviderArgs(aString: pulumi.Input.asInput('hello'), aEnum: pulumi.Input.asInput(pulumi_config_enum_index.MyEnum.fromValue('two')), ));
    final res = pulumi_config_enum_index.ResourceType('res', args: pulumi_config_enum_index.ResourceArgs(theString: pulumi.Input.asInput(pulumi.output(prov.aString).apply<String>((value) => (value).toString())), theEnum: pulumi.Input.asInput(prov.aEnum), ), options: pulumi.CustomResourceOptions(provider: prov, ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
