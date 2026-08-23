import 'dart:io';

import '../../infrastructure/task_tooling.dart';

void main() {
  final root = findRepoRoot().path;
  final nodejsDir = envOrDefault(
    'NODEJS_TEST_DIR',
    joinPath([root, 'thirdparty', 'pulumi', 'sdk', 'nodejs', 'tests']),
  );
  final pythonDir = envOrDefault(
    'PYTHON_TEST_DIR',
    joinPath([root, 'thirdparty', 'pulumi', 'sdk', 'python', 'lib', 'test']),
  );
  final dartCoreDir = envOrDefault(
    'DART_CORE_DIR',
    joinPath([root, 'packages', 'pulumi-dart', 'test', 'core']),
  );
  final ignoreFile = envOrDefault(
    'IGNORE_FILE',
    joinPath([root, 'docs', 'sdk-parity-audit-ignore.txt']),
  );
  final failOnMissing = envBool('FAIL_ON_MISSING');

  if (!Directory(nodejsDir).existsSync()) {
    stderr.writeln('error: NodeJS SDK test dir not found: $nodejsDir');
    exit(1);
  }
  if (!Directory(pythonDir).existsSync()) {
    stderr.writeln('error: Python SDK test dir not found: $pythonDir');
    exit(1);
  }
  if (!Directory(dartCoreDir).existsSync()) {
    stderr.writeln('error: Dart core test dir not found: $dartCoreDir');
    exit(1);
  }

  final dartTopics = _collectDartTopics(dartCoreDir);
  final dartNormTopics = dartTopics.map(_norm).toList();
  final ignoreTopics = _loadIgnoreTopics(ignoreFile);
  final entries = [
    ..._collectNodeEntries(nodejsDir),
    ..._collectPythonEntries(pythonDir),
  ];

  final byKey = <String, _Summary>{};
  var overallTotal = 0;
  var overallMatched = 0;
  var overallMissing = 0;
  var overallIgnored = 0;

  for (final entry in entries) {
    final key = '${entry.source}/${entry.category}';
    final summary = byKey.putIfAbsent(key, _Summary.new);
    summary.total += 1;
    overallTotal += 1;

    if (ignoreTopics.contains(entry.topic)) {
      summary.ignored += 1;
      overallIgnored += 1;
      continue;
    }

    if (_isMatched(entry.topic, dartNormTopics)) {
      summary.matched += 1;
      overallMatched += 1;
    } else {
      summary.missing += 1;
      summary.missingTopics.add(entry.topic);
      overallMissing += 1;
    }
  }

  stdout.writeln('Pulumi Dart SDK test-surface parity audit');
  stdout.writeln('NodeJS source dir: $nodejsDir');
  stdout.writeln('Python source dir: $pythonDir');
  stdout.writeln('Dart core dir:     $dartCoreDir');
  stdout.writeln();
  stdout.writeln('Upstream tests considered: $overallTotal');
  stdout.writeln('Matched by topic:          $overallMatched');
  stdout.writeln('Missing by topic:          $overallMissing');
  stdout.writeln('Ignored topics:            $overallIgnored');
  stdout.writeln();

  stdout.writeln('Summary by source/category (total matched missing ignored):');
  final sortedKeys = byKey.keys.toList()..sort();
  for (final key in sortedKeys) {
    final summary = byKey[key]!;
    stdout.writeln(
      '  - $key: ${summary.total} ${summary.matched} '
      '${summary.missing} ${summary.ignored}',
    );
  }
  stdout.writeln();

  if (overallMissing == 0) {
    stdout.writeln('Missing topics: none');
  } else {
    stdout.writeln('Missing topics by source/category:');
    for (final key in sortedKeys) {
      final summary = byKey[key]!;
      if (summary.missingTopics.isEmpty) {
        continue;
      }
      stdout.writeln('  $key:');
      final topics = summary.missingTopics.toList()..sort();
      for (final topic in topics) {
        stdout.writeln('    - $topic');
      }
    }
  }

  if (failOnMissing && overallMissing > 0) {
    exit(1);
  }
}

Set<String> _collectDartTopics(String dartCoreDir) {
  final topics = <String>{};
  for (final entity in Directory(dartCoreDir).listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('_test.dart')) {
      continue;
    }
    var topic = entity.uri.pathSegments.last;
    if (topic.endsWith('_test.dart')) {
      topic = topic.substring(0, topic.length - '_test.dart'.length);
    }
    if (topic.endsWith('_parity')) {
      topic = topic.substring(0, topic.length - '_parity'.length);
    }
    if (topic.isNotEmpty) {
      topics.add(topic);
    }
  }
  return topics;
}

List<_Entry> _collectNodeEntries(String nodejsDir) {
  final entries = <_Entry>[];
  final root = Directory(nodejsDir).absolute.path;
  for (final entity in Directory(root).listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('.spec.ts')) {
      continue;
    }
    final rel = relativePath(root, entity.absolute.path);
    final segments = rel.split('/').where((segment) => segment.isNotEmpty);
    final parts = segments.toList();
    final category = parts.length > 1 ? parts.first : 'root';
    final fileName = parts.last;
    final topic = fileName.substring(0, fileName.length - '.spec.ts'.length);
    entries.add(_Entry(source: 'nodejs', category: category, topic: topic));
  }
  return entries;
}

List<_Entry> _collectPythonEntries(String pythonDir) {
  final entries = <_Entry>[];
  final root = Directory(pythonDir).absolute.path;
  for (final entity in Directory(root).listSync(recursive: true)) {
    if (entity is! File) {
      continue;
    }
    final name = entity.uri.pathSegments.last;
    if (!name.startsWith('test_') || !name.endsWith('.py')) {
      continue;
    }
    final rel = relativePath(root, entity.absolute.path);
    final segments = rel.split('/').where((segment) => segment.isNotEmpty);
    final parts = segments.toList();
    final category = parts.length > 1 ? parts.first : 'root';
    var topic = parts.last;
    topic = topic.substring('test_'.length, topic.length - '.py'.length);
    entries.add(_Entry(source: 'python', category: category, topic: topic));
  }
  return entries;
}

Set<String> _loadIgnoreTopics(String ignoreFile) {
  final ignore = File(ignoreFile);
  if (!ignore.existsSync()) {
    return {};
  }
  final topics = <String>{};
  for (var line in ignore.readAsLinesSync()) {
    line = line.trim();
    if (line.isEmpty || line.startsWith('#')) {
      continue;
    }
    topics.add(line);
  }
  return topics;
}

bool _isMatched(String topic, List<String> dartNormTopics) {
  final n = _norm(topic);
  for (final dartNorm in dartNormTopics) {
    if (n == dartNorm || n.contains(dartNorm) || dartNorm.contains(n)) {
      return true;
    }
  }
  return false;
}

String _norm(String value) {
  return value.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
}

final class _Entry {
  _Entry({required this.source, required this.category, required this.topic});

  final String source;
  final String category;
  final String topic;
}

final class _Summary {
  int total = 0;
  int matched = 0;
  int missing = 0;
  int ignored = 0;
  final Set<String> missingTopics = <String>{};
}
