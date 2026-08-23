import 'package:artisanal/args.dart';

import 'integration_service.dart';

final class IntegrationPrewarmCommand extends Command<int> {
  IntegrationPrewarmCommand() {
    argParser
      ..addOption('root', defaultsTo: 'integration_tests')
      ..addOption('output', defaultsTo: '.local-prewarm')
      ..addOption('language-host')
      ..addOption('dart-sdk-version')
      ..addOption('jobs', defaultsTo: '4');
  }

  @override
  String get name => 'integration:prewarm';
  @override
  String get description => 'Precompile Dart integration-test kernels.';

  @override
  Future<int> run() => PulumiDartTool().run([
    'integration',
    'prewarm',
    '--root',
    option('root')! as String,
    '--output',
    option('output')! as String,
    if (option('language-host') case final String value) ...[
      '--language-host',
      value,
    ],
    if (option('dart-sdk-version') case final String value) ...[
      '--dart-sdk-version',
      value,
    ],
    '--jobs',
    option('jobs')! as String,
  ]);
}
