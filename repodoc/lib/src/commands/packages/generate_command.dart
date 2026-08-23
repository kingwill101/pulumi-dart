import 'dart:io';

import 'package:artisanal/args.dart';

import 'generate_service.dart' as service;

final class PackagesGenerateCommand extends Command<int> {
  PackagesGenerateCommand() {
    argParser
      ..addMultiOption(
        'provider',
        abbr: 'p',
        help: 'Provider to generate; repeat or comma-separate values.',
        splitCommas: true,
      )
      ..addOption(
        'sdk-version',
        help: 'Override the generated package version.',
      )
      ..addFlag('keep-sdks', help: 'Keep temporary output under .gen/sdk-gen.');
  }

  @override
  String get name => 'packages:generate';
  @override
  String get description => 'Generate one or more Dart provider packages.';
  List<String> buildArguments() {
    final providers = option('provider')! as List<String>;
    return [
      if (providers.isEmpty) '--all',
      for (final provider in providers) ...['--provider', provider],
      if ((option('sdk-version') as String?) case final version?) ...[
        '--sdk-version',
        version,
      ],
      if (option('keep-sdks') as bool) '--keep-sdks',
    ];
  }

  @override
  Future<int> run() async {
    await service.main(buildArguments());
    return exitCode;
  }
}
