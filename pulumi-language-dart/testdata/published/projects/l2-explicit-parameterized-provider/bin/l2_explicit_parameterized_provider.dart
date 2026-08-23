import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_goodbye/index.dart' as pulumi_goodbye_index;
import 'package:pulumi_goodbye/providers.dart' as pulumi_goodbye_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = pulumi_goodbye_providers.ProviderProvider('prov', args: pulumi_goodbye_providers.ProviderArgs(text: ('World').input(), ));
    final res = pulumi_goodbye_index.Goodbye('res', options: pulumi.CustomResourceOptions(provider: prov, ));

    _outputProperties = [
      pulumi.OutputProperty('parameterValue', pulumi.output(res.parameterValue).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
