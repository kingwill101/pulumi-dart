import 'dart:io';

import 'package:artisanal/args.dart';

import 'generate_service.dart' as service;

final class PackagesDocsCommand extends Command<int> {
  PackagesDocsCommand() {
    argParser.addMultiOption(
      'provider',
      abbr: 'p',
      help: 'Provider documentation to refresh; defaults to every provider.',
      splitCommas: true,
    );
  }

  @override
  String get name => 'packages:docs';

  @override
  String get description =>
      'Refresh provider examples without regenerating SDK source.';

  @override
  Future<int> run() async {
    final providers = option('provider')! as List<String>;
    await service.main([
      '--docs-only',
      if (providers.isEmpty) '--all',
      for (final provider in providers) ...['--provider', provider],
    ]);
    return exitCode;
  }
}
