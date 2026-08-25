import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_azuread/index.dart' as pulumi_azuread_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final application = pulumi_azuread_index.Application(
      'application',
      args: pulumi_azuread_index.ApplicationArgs(
        displayName: pulumi.Input.asInput('pulumi-dart-example'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'clientId',
        pulumi.output(application.clientId).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
