import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_pulumiservice/index.dart' as pulumi_pulumiservice_index;

class PulumiserviceStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  PulumiserviceStack() {
    final accessToken = pulumi_pulumiservice_index.AccessToken(
      'access-token',
      args: pulumi_pulumiservice_index.AccessTokenArgs(
        description: pulumi.Input.asInput('example token'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'token',
        pulumi.output(accessToken.value).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => PulumiserviceStack());
}
