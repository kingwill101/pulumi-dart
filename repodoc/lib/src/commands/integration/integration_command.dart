import 'package:artisanal/args.dart';

import 'integration_service.dart';

abstract class IntegrationCommand extends Command<int> {
  IntegrationCommand() {
    argParser.addOption(
      'package-dir',
      help: 'Go integration package directory.',
      defaultsTo: 'integration_tests',
    );
  }

  List<String> commonArguments() => [
    '--package-dir',
    option('package-dir')! as String,
  ];

  Future<int> execute(String operation, List<String> arguments) =>
      PulumiDartTool().run(['integration', operation, ...arguments]);
}
