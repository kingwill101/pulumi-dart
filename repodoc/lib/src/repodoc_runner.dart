import 'package:artisanal/args.dart';

import 'commands/packages/generate_command.dart';
import 'commands/packages/remove_command.dart';
import 'commands/packages/update_command.dart';
import 'commands/packages/check_workspace_command.dart';
import 'commands/integration/matrix_command.dart';
import 'commands/integration/prewarm_command.dart';
import 'commands/integration/run_command.dart';
import 'commands/parity/integration_command.dart';
import 'commands/parity/sdk_command.dart';
import 'commands/schema/check_command.dart';
import 'commands/tools/check_command.dart';

CommandRunner<int> createRepodocRunner() {
  return CommandRunner<int>(
      'repodoc',
      'Repository maintenance, generation, and diagnostics for Pulumi Dart.',
    )
    ..addCommand(SchemaCheckCommand())
    ..addCommand(PackagesGenerateCommand())
    ..addCommand(PackagesRemoveCommand())
    ..addCommand(PackagesUpdateCommand())
    ..addCommand(PackagesCheckWorkspaceCommand())
    ..addCommand(ParityIntegrationCommand())
    ..addCommand(ParitySdkCommand())
    ..addCommand(IntegrationMatrixCommand())
    ..addCommand(IntegrationRunCommand())
    ..addCommand(IntegrationPrewarmCommand())
    ..addCommand(ToolsCheckCommand());
}

Future<int> runRepodoc(List<String> arguments) async {
  final runner = createRepodocRunner();
  try {
    final result = await runner.run(arguments);
    return result ?? 0;
  } catch (error) {
    runner.io.error(error);
    return 1;
  }
}
