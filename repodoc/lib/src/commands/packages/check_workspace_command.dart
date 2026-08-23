import 'package:artisanal/args.dart';

import 'check_workspace_service.dart' as service;

final class PackagesCheckWorkspaceCommand extends Command<int> {
  @override
  String get name => 'packages:check-workspace';
  @override
  String get description => 'Validate package workspace conventions.';

  @override
  int run() {
    service.main();
    io.success('Workspace package conventions are valid.');
    return 0;
  }
}
