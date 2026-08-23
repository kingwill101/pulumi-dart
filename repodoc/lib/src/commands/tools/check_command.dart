import 'package:artisanal/args.dart';

import 'check_service.dart' as service;

final class ToolsCheckCommand extends Command<int> {
  @override
  String get name => 'tools:check';
  @override
  String get description => 'Verify repository generation prerequisites.';
  @override
  int run() {
    service.main();
    io.success('All required tools are available.');
    return 0;
  }
}
