import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_cloudflare/index.dart' as pulumi_cloudflare_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final account = pulumi_cloudflare_index.Account(
      'account',
      args: pulumi_cloudflare_index.AccountArgs(
        name: pulumi.Input.asInput('pulumi-dart-example'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'accountId',
        pulumi.output(account.id).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
