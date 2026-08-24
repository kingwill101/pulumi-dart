import 'dart:io';

import '../../infrastructure/dart_cli.dart';

void main() {
  const requiredTools = ['go', 'pulumi', 'curl', 'jq'];
  final missing = <String>[];

  try {
    DartCli.resolve();
  } on StateError {
    missing.add('dart (or fvm)');
  }

  for (final tool in requiredTools) {
    final result = Process.runSync(Platform.isWindows ? 'where' : 'which', [
      tool,
    ], runInShell: false);
    if (result.exitCode != 0) {
      missing.add(tool);
    }
  }

  if (missing.isNotEmpty) {
    for (final tool in missing) {
      stderr.writeln('Missing required tool: $tool');
    }
    exit(1);
  }
}
