import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_tls/index.dart' as pulumi_tls_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final privateKey = pulumi_tls_index.PrivateKey(
      'private-key',
      args: pulumi_tls_index.PrivateKeyArgs(
        algorithm: pulumi.Input.asInput('ED25519'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'publicKey',
        pulumi
            .output(privateKey.publicKeyOpenssh)
            .apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
