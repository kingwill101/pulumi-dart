import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_command/local.dart' as pulumi_command_local;

class CommandStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  CommandStack() {
    final greeting = pulumi_command_local.Command(
      'greeting',
      args: pulumi_command_local.CommandArgs(
        create: pulumi.Input.asInput('echo \'hello from Pulumi Dart\''),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'message',
        pulumi.output(greeting.stdout).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => CommandStack());
}
