import 'dart:io';

import 'src/task_tooling.dart';

void main() {
  final root = findRepoRoot().path;
  final upstreamDir = envOrDefault(
    'UPSTREAM_DIR',
    joinPath([root, 'thirdparty', 'pulumi', 'tests', 'integration']),
  );
  final dartDir = envOrDefault(
    'DART_DIR',
    joinPath([root, 'integration_tests']),
  );
  final ignoreFile = envOrDefault(
    'IGNORE_FILE',
    joinPath([root, 'docs', 'parity-audit-ignore.txt']),
  );
  final failOnMissing = envBool('FAIL_ON_MISSING');

  final upstreamDirectory = Directory(upstreamDir);
  if (!upstreamDirectory.existsSync()) {
    stderr.writeln('error: upstream integration dir not found: $upstreamDir');
    exit(1);
  }

  final dartDirectory = Directory(dartDir);
  if (!dartDirectory.existsSync()) {
    stderr.writeln('error: Dart integration dir not found: $dartDir');
    exit(1);
  }

  final baselineFiles = [
    joinPath([upstreamDir, 'integration_go_test.go']),
    joinPath([upstreamDir, 'integration_nodejs_test.go']),
    joinPath([upstreamDir, 'integration_python_test.go']),
  ];
  for (final filePath in baselineFiles) {
    if (!File(filePath).existsSync()) {
      stderr.writeln('error: upstream baseline file not found: $filePath');
      exit(1);
    }
  }

  final upstreamTests = <String>{};
  final baselineRegex = RegExp(
    r'^func Test([A-Za-z0-9_]+)(Python|NodeJS|Node|Go)\(',
  );
  for (final filePath in baselineFiles) {
    for (final line in File(filePath).readAsLinesSync()) {
      final match = baselineRegex.firstMatch(line.trim());
      if (match != null) {
        upstreamTests.add(match.group(1)!);
      }
    }
  }

  final dartTests = <String>{};
  final dartRegex = RegExp(r'^func Test([A-Za-z0-9_]+)\(');
  for (final entity in dartDirectory.listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('_test.go')) {
      continue;
    }
    for (final line in entity.readAsLinesSync()) {
      final match = dartRegex.firstMatch(line.trim());
      if (match == null) {
        continue;
      }
      var name = match.group(1)!;
      if (name.endsWith('Dart')) {
        name = name.substring(0, name.length - 'Dart'.length);
      }
      dartTests.add(name);
    }
  }

  final missingRaw = (upstreamTests.difference(dartTests).toList()..sort());

  final ignored = <String>{};
  final ignore = File(ignoreFile);
  if (ignore.existsSync()) {
    for (var line in ignore.readAsLinesSync()) {
      line = line.trim();
      if (line.isEmpty || line.startsWith('#')) {
        continue;
      }
      ignored.add(line);
    }
  }

  final missingFiltered = [
    for (final name in missingRaw)
      if (!ignored.contains(name)) name,
  ];

  stdout.writeln('Pulumi Dart parity audit');
  stdout.writeln('Upstream baseline tests: ${upstreamTests.length}');
  stdout.writeln('Dart integration tests:  ${dartTests.length}');
  stdout.writeln('Missing before ignore:   ${missingRaw.length}');
  stdout.writeln('Missing after ignore:    ${missingFiltered.length}');

  if (missingFiltered.isNotEmpty) {
    stdout.writeln();
    stdout.writeln('Missing tests (after ignore):');
    for (final test in missingFiltered) {
      stdout.writeln('  - $test');
    }

    final categories = <String, int>{};
    for (final test in missingFiltered) {
      final category = _categoryForTest(test);
      categories[category] = (categories[category] ?? 0) + 1;
    }
    final sorted = categories.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    stdout.writeln();
    stdout.writeln('Missing test categories:');
    for (final entry in sorted) {
      stdout.writeln('  - ${entry.key}: ${entry.value}');
    }
  }

  if (failOnMissing && missingFiltered.isNotEmpty) {
    exit(1);
  }
}

String _categoryForTest(String name) {
  if (RegExp(r'Config|Secret').hasMatch(name)) {
    return 'config';
  }
  if (RegExp(r'About|Printf|Log|Error|Fail|Failure|Debugger').hasMatch(name)) {
    return 'cli-error';
  }
  if (RegExp(
    r'Dynamic|Partial|Enum|ResourceWithSecretSerialization|ConvertTerraformProvider',
  ).hasMatch(name)) {
    return 'dynamic-schema';
  }
  return 'other';
}
