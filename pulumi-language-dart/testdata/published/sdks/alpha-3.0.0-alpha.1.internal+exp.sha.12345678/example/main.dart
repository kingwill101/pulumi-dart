import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_alpha/providers.dart' as provider;

class AlphaStack extends pulumi.Stack {
  AlphaStack() {
    // An explicit provider is useful when a stack needs more than one provider
    // configuration. Most programs can omit it and use the default provider.
    final configuredProvider = provider.ProviderProvider('example');

    registerOutputs({'providerUrn': configuredProvider.urn});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AlphaStack());
}
