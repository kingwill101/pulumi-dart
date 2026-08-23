import 'dart:io';

import 'package:repodoc/src/integration_runner.dart';

Future<void> main(List<String> arguments) async {
  exitCode = await runIntegrationCommand(arguments);
}
