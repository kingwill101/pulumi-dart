import 'dart:convert';
import 'dart:io';

import 'integration_prewarm_impl.dart' as implementation;

export 'integration_prewarm_impl.dart' hide IntegrationPrewarmer;

/// Prepares integration packages against the repository SDK before delegating
/// to the kernel prewarming implementation.
///
/// Normal integration execution rewrites each fixture's `pulumi` dependency to
/// the local SDK. Prewarming must use the same dependency graph; otherwise a
/// hosted `pulumi: any` constraint can snapshot a released SDK instead of the
/// commit under test.
class IntegrationPrewarmer {
  IntegrationPrewarmer({
    required this.root,
    required this.output,
    required this.launcherTemplate,
    required this.dartSdkVersion,
    required this.jobs,
  });

  final Directory root;
  final Directory output;
  final File launcherTemplate;
  final String dartSdkVersion;
  final int jobs;

  Future<int> run() async {
    final pulumiSdk = _resolvePulumiSdk(root);
    final generatedOverrides = _writeLocalSdkOverrides(root, pulumiSdk);
    try {
      return await implementation.IntegrationPrewarmer(
        root: root,
        output: output,
        launcherTemplate: launcherTemplate,
        dartSdkVersion: dartSdkVersion,
        jobs: jobs,
      ).run();
    } finally {
      for (final override in generatedOverrides.reversed) {
        if (override.existsSync()) {
          override.deleteSync();
        }
      }
    }
  }
}

Directory _resolvePulumiSdk(Directory fixtureRoot) {
  var directory = fixtureRoot.absolute.parent;
  while (true) {
    for (final relative in const [
      'packages/pulumi-dart',
      'pulumi-dart/packages/pulumi-dart',
      'pulumi-dart',
    ]) {
      final candidate = Directory(_join(directory.path, relative)).absolute;
      final pubspec = File(_join(candidate.path, 'pubspec.yaml'));
      if (!pubspec.existsSync()) {
        continue;
      }
      final name = _readTopLevelScalar(pubspec.readAsStringSync(), 'name');
      if (name == 'pulumi') {
        return candidate;
      }
    }

    if (directory.parent.path == directory.path) {
      break;
    }
    directory = directory.parent;
  }

  throw StateError(
    'Unable to locate the repository Pulumi SDK for ${fixtureRoot.path}.',
  );
}

List<File> _writeLocalSdkOverrides(
  Directory fixtureRoot,
  Directory pulumiSdk,
) {
  if (!fixtureRoot.existsSync()) {
    throw StateError(
      'Integration fixture root does not exist: ${fixtureRoot.path}',
    );
  }

  final pubspecs = fixtureRoot
      .listSync(recursive: true, followLinks: false)
      .whereType<File>()
      .where((file) => _basename(file.path) == 'pubspec.yaml')
      .where((file) {
        final relative = _toSlash(_relativeTo(fixtureRoot.path, file.path));
        final segments = relative.split('/');
        return !segments.contains('.dart_tool') &&
            !segments.contains('build');
      })
      .toList()
    ..sort((left, right) => left.path.compareTo(right.path));

  final content = 'dependency_overrides:\n'
      '  pulumi:\n'
      '    path: ${jsonEncode(_toSlash(pulumiSdk.path))}\n';
  final targets = <File>[];

  // Validate all targets before writing any file so an existing project-local
  // override cannot leave the fixture tree partially prepared.
  for (final pubspec in pubspecs) {
    final target = File(_join(pubspec.parent.path, 'pubspec_overrides.yaml'));
    if (target.existsSync()) {
      if (target.readAsStringSync() == content) {
        continue;
      }
      throw StateError(
        'Refusing to replace existing dependency overrides: ${target.path}',
      );
    }
    targets.add(target);
  }

  for (final target in targets) {
    target.writeAsStringSync(content);
  }
  return targets;
}

String? _readTopLevelScalar(String content, String key) {
  final pattern = RegExp('^${RegExp.escape(key)}\\s*:\\s*(.*?)\\s*\$');
  for (final rawLine in const LineSplitter().convert(content)) {
    if (rawLine.isEmpty || rawLine.trimLeft().startsWith('#')) {
      continue;
    }
    if (rawLine.length != rawLine.trimLeft().length) {
      continue;
    }
    final withoutComment = rawLine.split('#').first.trimRight();
    final match = pattern.firstMatch(withoutComment);
    if (match == null) {
      continue;
    }
    var value = match.group(1)?.trim() ?? '';
    if (value.length >= 2 &&
        ((value.startsWith('"') && value.endsWith('"')) ||
            (value.startsWith("'") && value.endsWith("'")))) {
      value = value.substring(1, value.length - 1);
    }
    return value;
  }
  return null;
}

String _join(String left, String right) {
  final separator = Platform.pathSeparator;
  final normalizedLeft = left.endsWith(separator)
      ? left.substring(0, left.length - separator.length)
      : left;
  final normalizedRight = right.startsWith(separator)
      ? right.substring(1)
      : right;
  return '$normalizedLeft$separator$normalizedRight';
}

String _relativeTo(String root, String path) {
  final rootPath = Directory(root).absolute.path;
  final absolutePath = File(path).absolute.path;
  if (absolutePath == rootPath) {
    return '.';
  }
  final prefix = rootPath.endsWith(Platform.pathSeparator)
      ? rootPath
      : '$rootPath${Platform.pathSeparator}';
  if (absolutePath.startsWith(prefix)) {
    return absolutePath.substring(prefix.length);
  }
  return absolutePath;
}

String _basename(String path) {
  final normalized = path.replaceAll('\\', '/');
  final parts = normalized.split('/');
  return parts.isEmpty ? normalized : parts.last;
}

String _toSlash(String path) => path.replaceAll('\\', '/');
