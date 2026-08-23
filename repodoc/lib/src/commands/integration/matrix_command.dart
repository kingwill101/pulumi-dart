import 'integration_command.dart';

final class IntegrationMatrixCommand extends IntegrationCommand {
  IntegrationMatrixCommand() {
    argParser
      ..addOption('binary', help: 'Precompiled Go test binary.')
      ..addOption('partitions', defaultsTo: '8', help: 'Partition count.');
  }

  @override
  String get name => 'integration:matrix';
  @override
  String get description => 'Build a balanced integration-test matrix.';

  @override
  Future<int> run() => execute('matrix', [
    ...commonArguments(),
    if (option('binary') case final String binary) ...['--binary', binary],
    '--partitions',
    option('partitions')! as String,
  ]);
}
