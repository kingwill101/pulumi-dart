import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_plain/providers.dart' as provider;

class PlainStack extends pulumi.Stack {
  PlainStack() {
    // An explicit provider is useful when a stack needs more than one provider
    // configuration. Most programs can omit it and use the default provider.
    final configuredProvider = provider.ProviderProvider('example');

    registerOutputs({'providerUrn': configuredProvider.urn});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => PlainStack());
}
