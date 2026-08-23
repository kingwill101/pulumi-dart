import 'package:artisanal/args.dart';

import 'commands/integration/matrix_command.dart';
import 'commands/integration/prewarm_command.dart';
import 'commands/integration/run_command.dart';

CommandRunner<int> createIntegrationRunner() {
  return CommandRunner<int>(
      'repodoc-integration',
      'Pulumi Dart integration test preparation and execution.',
    )
    ..addCommand(IntegrationMatrixCommand())
    ..addCommand(IntegrationRunCommand())
    ..addCommand(IntegrationPrewarmCommand());
}

Future<int> runIntegrationCommand(List<String> arguments) async {
  final runner = createIntegrationRunner();
  try {
    final result = await runner.run(arguments);
    return result ?? 0;
  } catch (error) {
    runner.io.error(error);
    return 1;
  }
}
