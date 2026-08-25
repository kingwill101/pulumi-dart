import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_postgresql/index.dart' as pulumi_postgresql_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final database = pulumi_postgresql_index.Database(
      'database',
      args: pulumi_postgresql_index.DatabaseArgs(
        name: pulumi.Input.asInput('pulumi_dart_example'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'databaseName',
        pulumi.output(database.name).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
