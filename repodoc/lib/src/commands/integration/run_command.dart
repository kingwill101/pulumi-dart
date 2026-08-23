import 'integration_command.dart';

final class IntegrationRunCommand extends IntegrationCommand {
  IntegrationRunCommand() {
    argParser
      ..addOption('binary', help: 'Precompiled Go test binary.')
      ..addOption('run', help: 'Go test regular expression.')
      ..addOption('tests', help: 'Comma-separated test names.')
      ..addOption('timeout', defaultsTo: '60m', help: 'Go test timeout.')
      ..addOption('parallel', defaultsTo: '4', help: 'Go test parallelism.');
  }

  @override
  String get name => 'integration:run';
  @override
  String get description => 'Run selected integration tests directly.';

  @override
  Future<int> run() => execute('run', [
    ...commonArguments(),
    if (option('binary') case final String value) ...['--binary', value],
    if (option('run') case final String value) ...['--run', value],
    if (option('tests') case final String value) ...['--tests', value],
    '--timeout',
    option('timeout')! as String,
    '--parallel',
    option('parallel')! as String,
  ]);
}
