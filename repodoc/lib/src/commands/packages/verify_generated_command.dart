import 'package:artisanal/args.dart';

import 'verify_generated_service.dart';

final class PackagesVerifyGeneratedCommand extends Command<int> {
  @override
  String get name => 'packages:verify-generated';

  @override
  String get description =>
      'Verify generated packages, allowing only trailing blank-line drift.';

  @override
  int run() {
    final result = GeneratedTreeVerifier().verify();
    if (!result.isClean) {
      io.error('Generated package drift detected:');
      for (final path in result.driftPaths) {
        io.writeln('  $path');
      }
      return 1;
    }

    if (result.eofOnlyPaths.isNotEmpty) {
      io.info(
        'Ignored trailing blank-line differences in '
        '${result.eofOnlyPaths.length} generated file(s).',
      );
    }
    io.success('Generated packages are up to date.');
    return 0;
  }
}
