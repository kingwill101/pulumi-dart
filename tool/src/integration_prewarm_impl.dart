import 'dart:convert';
import 'dart:io';

class PrewarmCandidate {
  const PrewarmCandidate({
    required this.programDirectory,
    required this.entryPoint,
    required this.sourceKind,
    this.projectFile,
  });

  final Directory programDirectory;
  final String entryPoint;
  final String sourceKind;
  final File? projectFile;
}

class PrewarmResult {
  const PrewarmResult._({
    required this.candidate,
    required this.source,
    required this.success,
    this.fingerprint,
    this.artifact,
    this.projectFile,
    this.programDirectory,
    this.reason,
  });

  factory PrewarmResult.success({
    required PrewarmCandidate candidate,
    required String source,
    required String fingerprint,
    required String artifact,
    required String? projectFile,
    required String programDirectory,
  }) {
    return PrewarmResult._(
      candidate: candidate,
      source: source,
      success: true,
      fingerprint: fingerprint,
      artifact: artifact,
      projectFile: projectFile,
      programDirectory: programDirectory,
    );
  }

  factory PrewarmResult.skipped(
    PrewarmCandidate candidate,
    String source,
    String reason,
  ) {
    return PrewarmResult._(
      candidate: candidate,
      source: source,
      success: false,
      reason: reason,
    );
  }

  final PrewarmCandidate candidate;
  final String source;
  final bool success;
  final String? fingerprint;
  final String? artifact;
  final String? projectFile;
  final String? programDirectory;
  final String? reason;

  Map<String, Object?> toJson() {
    return {
      'success': success,
      'source': source,
      'sourceKind': candidate.sourceKind,
      'entryPoint': candidate.entryPoint,
      if (fingerprint != null) 'fingerprint': fingerprint,
      if (artifact != null) 'artifact': artifact,
      if (projectFile != null) 'projectFile': projectFile,
      if (programDirectory != null) 'programDirectory': programDirectory,
      if (reason != null) 'reason': reason,
    };
  }
}

List<PrewarmCandidate> discoverPrewarmCandidates(Directory root) {
  final candidates = <PrewarmCandidate>[];
  final seen = <String>{};
  final entities = root.listSync(recursive: true, followLinks: false);

  final projectFiles = entities.whereType<File>().where((file) {
    final name = _basename(file.path);
    return name == 'Pulumi.yaml' || name == 'Pulumi.yml';
  }).toList()..sort((left, right) => left.path.compareTo(right.path));

  for (final projectFile in projectFiles) {
    final candidate = _resolvePulumiCandidate(projectFile);
    if (candidate == null) {
      continue;
    }
    final key =
        '${candidate.programDirectory.absolute.path}|'
        '${candidate.entryPoint}|${candidate.sourceKind}';
    if (seen.add(key)) {
      candidates.add(candidate);
    }
  }

  final automationPubspecs = entities.whereType<File>().where((file) {
    if (_basename(file.path) != 'pubspec.yaml') {
      return false;
    }
    final relative = _toSlash(_relativeTo(root.path, file.path));
    return relative.startsWith('automation/');
  }).toList()..sort((left, right) => left.path.compareTo(right.path));

  for (final pubspec in automationPubspecs) {
    final programDirectory = pubspec.parent;
    final binDirectory = Directory(_join(programDirectory.path, 'bin'));
    if (!binDirectory.existsSync()) {
      continue;
    }
    final entrypoints =
        binDirectory
            .listSync(followLinks: false)
            .whereType<File>()
            .where((file) => file.path.endsWith('.dart'))
            .toList()
          ..sort((left, right) => left.path.compareTo(right.path));
    for (final entrypoint in entrypoints) {
      final relativeEntry = _toSlash(
        _relativeTo(programDirectory.path, entrypoint.path),
      );
      final candidate = PrewarmCandidate(
        programDirectory: programDirectory,
        entryPoint: relativeEntry,
        sourceKind: 'direct',
      );
      final key =
          '${candidate.programDirectory.absolute.path}|'
          '${candidate.entryPoint}|${candidate.sourceKind}';
      if (seen.add(key)) {
        candidates.add(candidate);
      }
    }
  }

  candidates.sort((left, right) {
    final leftKey = '${left.programDirectory.path}/${left.entryPoint}';
    final rightKey = '${right.programDirectory.path}/${right.entryPoint}';
    return leftKey.compareTo(rightKey);
  });
  return candidates;
}

PrewarmCandidate? _resolvePulumiCandidate(File projectFile) {
  final projectDirectory = projectFile.parent;
  final projectContent = projectFile.readAsStringSync();
  final mainValue = readTopLevelScalar(projectContent, 'main');

  if (mainValue != null && mainValue.isNotEmpty && mainValue != '.') {
    final explicitPath = _join(projectDirectory.path, mainValue);
    final explicitType = FileSystemEntity.typeSync(explicitPath);
    if (explicitType == FileSystemEntityType.directory) {
      final programDirectory = Directory(explicitPath);
      if (_hasPubspec(programDirectory)) {
        final entryPoint = _resolveDefaultEntrypoint(programDirectory);
        if (entryPoint != null) {
          return PrewarmCandidate(
            programDirectory: programDirectory,
            entryPoint: entryPoint,
            sourceKind: 'pulumi',
            projectFile: projectFile,
          );
        }
      }
    }
    if (explicitType == FileSystemEntityType.file &&
        explicitPath.endsWith('.dart')) {
      final explicitFile = File(explicitPath);
      final programDirectory =
          _findPubspecAncestor(explicitFile.parent, projectDirectory) ??
          projectDirectory;
      if (_hasPubspec(programDirectory)) {
        return PrewarmCandidate(
          programDirectory: programDirectory,
          entryPoint: _toSlash(
            _relativeTo(programDirectory.path, explicitFile.path),
          ),
          sourceKind: 'pulumi',
          projectFile: projectFile,
        );
      }
    }
  }

  if (_hasPubspec(projectDirectory)) {
    final entryPoint = _resolveDefaultEntrypoint(
      projectDirectory,
      token: mainValue,
    );
    if (entryPoint != null) {
      return PrewarmCandidate(
        programDirectory: projectDirectory,
        entryPoint: entryPoint,
        sourceKind: 'pulumi',
        projectFile: projectFile,
      );
    }
  }

  final childProjects = projectDirectory
      .listSync(followLinks: false)
      .whereType<Directory>()
      .where(_hasPubspec)
      .toList();
  if (childProjects.length == 1) {
    final child = childProjects.single;
    final entryPoint = _resolveDefaultEntrypoint(child);
    if (entryPoint != null) {
      return PrewarmCandidate(
        programDirectory: child,
        entryPoint: entryPoint,
        sourceKind: 'pulumi',
        projectFile: projectFile,
      );
    }
  }

  return null;
}

Directory? _findPubspecAncestor(Directory start, Directory boundary) {
  var current = start.absolute;
  final boundaryPath = boundary.absolute.path;
  while (true) {
    if (_hasPubspec(current)) {
      return current;
    }
    if (current.path == boundaryPath || current.parent.path == current.path) {
      return null;
    }
    current = current.parent;
  }
}

bool _hasPubspec(Directory directory) {
  return File(_join(directory.path, 'pubspec.yaml')).existsSync();
}

String? _resolveDefaultEntrypoint(Directory programDirectory, {String? token}) {
  final normalizedToken = token?.trim();
  if (normalizedToken != null &&
      normalizedToken.isNotEmpty &&
      normalizedToken != '.' &&
      !normalizedToken.contains('/') &&
      !normalizedToken.contains('\\')) {
    final filename = normalizedToken.endsWith('.dart')
        ? normalizedToken
        : '$normalizedToken.dart';
    final tokenCandidate = File(_join(programDirectory.path, 'bin/$filename'));
    if (tokenCandidate.existsSync()) {
      return _toSlash(_relativeTo(programDirectory.path, tokenCandidate.path));
    }
  }

  final mainCandidate = File(_join(programDirectory.path, 'bin/main.dart'));
  if (mainCandidate.existsSync()) {
    return 'bin/main.dart';
  }

  final pubspec = File(_join(programDirectory.path, 'pubspec.yaml'));
  if (pubspec.existsSync()) {
    final packageName = readTopLevelScalar(pubspec.readAsStringSync(), 'name');
    if (packageName != null && packageName.isNotEmpty) {
      final packageCandidate = File(
        _join(programDirectory.path, 'bin/$packageName.dart'),
      );
      if (packageCandidate.existsSync()) {
        return _toSlash(
          _relativeTo(programDirectory.path, packageCandidate.path),
        );
      }
    }
  }

  final binDirectory = Directory(_join(programDirectory.path, 'bin'));
  if (!binDirectory.existsSync()) {
    return null;
  }
  final dartFiles = binDirectory
      .listSync(followLinks: false)
      .whereType<File>()
      .where((file) => file.path.endsWith('.dart'))
      .toList();
  if (dartFiles.length == 1) {
    return _toSlash(_relativeTo(programDirectory.path, dartFiles.single.path));
  }
  return null;
}

String? readTopLevelScalar(String content, String key) {
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

String summarizeProcessOutput(ProcessResult result) {
  final combined = '${result.stderr}\n${result.stdout}'.trim().replaceAll(
    RegExp(r'\s+'),
    ' ',
  );
  if (combined.length <= 400) {
    return combined;
  }
  return '${combined.substring(0, 397)}...';
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
  final entityType = FileSystemEntity.typeSync(path);
  final absolutePath = entityType == FileSystemEntityType.directory
      ? Directory(path).absolute.path
      : File(path).absolute.path;
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
