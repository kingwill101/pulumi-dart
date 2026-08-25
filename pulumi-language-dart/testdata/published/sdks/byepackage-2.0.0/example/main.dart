import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_byepackage/providers.dart' as provider;

class ByepackageStack extends pulumi.Stack {
  ByepackageStack() {
    // An explicit provider is useful when a stack needs more than one provider
    // configuration. Most programs can omit it and use the default provider.
    final configuredProvider = provider.ProviderProvider('example');

    registerOutputs({'providerUrn': configuredProvider.urn});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ByepackageStack());
}
