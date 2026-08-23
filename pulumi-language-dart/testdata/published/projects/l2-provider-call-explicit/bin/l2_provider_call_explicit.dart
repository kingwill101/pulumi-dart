import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_call/index.dart' as pulumi_call_index;
import 'package:pulumi_call/providers.dart' as pulumi_call_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final explicitProv = pulumi_call_providers.ProviderProvider('explicitProv', args: pulumi_call_providers.ProviderArgs(value: ('explicitProvValue').input(), ));
    final explicitRes = pulumi_call_index.Custom('explicitRes', args: pulumi_call_index.CustomArgs(value: ('explicitValue').input(), ), options: pulumi.CustomResourceOptions(provider: explicitProv, ));

    _outputProperties = [
      pulumi.OutputProperty('explicitProviderValue', pulumi.output(pulumi.output(explicitRes.providerValue()).apply((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('explicitProvFromIdentity', pulumi.output(pulumi.output(explicitProv.identity()).apply((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('explicitProvFromPrefixed', pulumi.output(pulumi.output(explicitProv.prefixed(args: pulumi_call_providers.ProviderPrefixedArgs(prefix: ('call-prefix-').input()))).apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
