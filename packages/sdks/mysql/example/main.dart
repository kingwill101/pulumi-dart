import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_mysql/index.dart' as pulumi_mysql_index;

class MysqlStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  MysqlStack() {
    final database = pulumi_mysql_index.Database(
      'database',
      args: pulumi_mysql_index.DatabaseArgs(
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
  await pulumi.Deployment.runOrThrow(() => MysqlStack());
}
