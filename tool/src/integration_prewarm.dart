import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';

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

  final Map<String, Future<_PackagePreparation>> _packagePreparations = {};
  final Map<String, List<String>> _dependencyFingerprintCache = {};

  Future<int> run() async {
    if (!root.existsSync()) {
      throw StateError('Integration fixture root does not exist: ${root.path}');
    }
    if (!launcherTemplate.existsSync()) {
      throw StateError(
        'Kernel launcher template does not exist: ${launcherTemplate.path}',
      );
    }

    if (output.existsSync()) {
      output.deleteSync(recursive: true);
    }
    output.createSync(recursive: true);
    final kernelsDirectory = Directory(_join(output.path, 'kernels'))
      ..createSync(recursive: true);
    final binDirectory = Directory(_join(output.path, 'bin'))
      ..createSync(recursive: true);
    final launcher = File(
      _join(binDirectory.path, 'pulumi-dart-kernel-launcher'),
    );
    launcherTemplate.copySync(launcher.path);

    final candidates = discoverPrewarmCandidates(root);
    stderr.writeln(
      'Discovered ${candidates.length} Dart integration entrypoints to prewarm.',
    );

    final results = List<PrewarmResult?>.filled(candidates.length, null);
    var nextCandidate = 0;

    Future<void> worker() async {
      while (true) {
        final index = nextCandidate;
        if (index >= candidates.length) {
          return;
        }
        nextCandidate++;
        results[index] = await _prewarmCandidate(
          candidate: candidates[index],
          index: index,
          kernelsDirectory: kernelsDirectory,
        );
      }
    }

    final workerCount = candidates.isEmpty
        ? 1
        : math.min(jobs, candidates.length);
    await Future.wait(List.generate(workerCount, (_) => worker()));

    final completed = results.whereType<PrewarmResult>().toList(growable: false);
    final successful = completed.where((result) => result.success).toList();
    final skipped = completed.where((result) => !result.success).toList();

    final manifest = <String, Object?>{
      'schemaVersion': 1,
      'dartSdkVersion': dartSdkVersion,
      'compiler': 'dart-compile-kernel',
      'launcher': 'bin/pulumi-dart-kernel-launcher',
      'generatedAt': DateTime.now().toUtc().toIso8601String(),
      'root': root.absolute.path,
      'programs': successful.map((result) => result.toJson()).toList(),
      'skipped': skipped.map((result) => result.toJson()).toList(),
    };
    final manifestFile = File(_join(output.path, 'manifest.json'));
    manifestFile.writeAsStringSync(
      '${const JsonEncoder.withIndent('  ').convert(manifest)}\n',
    );

    stderr.writeln(
      'Prewarmed ${successful.length}/${candidates.length} Dart entrypoints; '
      '${skipped.length} skipped. Manifest: ${manifestFile.path}',
    );
    for (final result in skipped.take(20)) {
      stderr.writeln('  skipped ${result.source}: ${result.reason}');
    }

    // This first slice deliberately permits complete source fallback. Strict
    // miss enforcement will be added once the expected-prewarmable catalog is
    // established from manifest telemetry.
    return 0;
  }

  Future<PrewarmResult> _prewarmCandidate({
    required PrewarmCandidate candidate,
    required int index,
    required Directory kernelsDirectory,
  }) async {
    final source = _relativeTo(root.path, candidate.programDirectory.path);
    stderr.writeln('Prewarming $source (${candidate.entryPoint})');

    final preparation = await _preparePackage(candidate.programDirectory);
    if (!preparation.success) {
      return PrewarmResult.skipped(
        candidate,
        source,
        preparation.reason ?? 'dependency preparation failed',
      );
    }

    final fingerprint = _portableProgramFingerprint(candidate);
    final artifactRelative = 'kernels/$fingerprint.dill';
    final artifact = File(_join(output.path, artifactRelative));

    if (!artifact.existsSync()) {
      final temporaryArtifact = File('${artifact.path}.$index.tmp');
      final compile = await Process.run(
        'dart',
        [
          'compile',
          'kernel',
          candidate.entryPoint,
          '-o',
          temporaryArtifact.path,
        ],
        workingDirectory: candidate.programDirectory.path,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (compile.exitCode != 0) {
        if (temporaryArtifact.existsSync()) {
          temporaryArtifact.deleteSync();
        }
        return PrewarmResult.skipped(
          candidate,
          source,
          'dart compile kernel failed: ${summarizeProcessOutput(compile)}',
        );
      }

      if (artifact.existsSync()) {
        temporaryArtifact.deleteSync();
      } else {
        temporaryArtifact.renameSync(artifact.path);
      }
    }

    return PrewarmResult.success(
      candidate: candidate,
      source: source,
      fingerprint: fingerprint,
      artifact: artifactRelative,
      projectFile: candidate.projectFile == null
          ? null
          : _relativeTo(root.path, candidate.projectFile!.path),
      programDirectory: _relativeTo(
        root.path,
        candidate.programDirectory.path,
      ),
    );
  }

  Future<_PackagePreparation> _preparePackage(Directory directory) {
    final path = directory.absolute.path;
    return _packagePreparations.putIfAbsent(path, () async {
      final pubGet = await Process.run(
        'dart',
        const ['pub', 'get'],
        workingDirectory: path,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (pubGet.exitCode != 0) {
        return _PackagePreparation.failure(
          'dart pub get failed: ${summarizeProcessOutput(pubGet)}',
        );
      }
      return const _PackagePreparation.success();
    });
  }

  String _portableProgramFingerprint(PrewarmCandidate candidate) {
    final entries = <String>{
      'compiler=dart-compile-kernel',
      'dartSdkVersion=$dartSdkVersion',
      'entryPoint=${_toSlash(candidate.entryPoint)}',
    };
    final programDirectory = candidate.programDirectory.absolute;

    _appendPubspecFingerprint(
      entries,
      'project/pubspec.yaml',
      File(_join(programDirectory.path, 'pubspec.yaml')),
    );
    _appendDirectoryFingerprints(
      entries,
      programDirectory,
      labelPrefix: 'project',
    );
    entries.addAll(_localDependencyFingerprints(programDirectory));

    final sortedEntries = entries.toList()..sort();
    return sha256
        .convert(utf8.encode('${sortedEntries.join('\n')}\n'))
        .toString();
  }

  List<String> _localDependencyFingerprints(Directory programDirectory) {
    final packageConfig = File(
      _join(programDirectory.path, '.dart_tool/package_config.json'),
    );
    if (!packageConfig.existsSync()) {
      return const [];
    }

    final decoded = jsonDecode(packageConfig.readAsStringSync());
    if (decoded is! Map<String, dynamic> || decoded['packages'] is! List) {
      return const [];
    }

    final entries = <String>[];
    for (final rawPackage in decoded['packages'] as List) {
      if (rawPackage is! Map) {
        continue;
      }
      final package = rawPackage.cast<String, dynamic>();
      final name = package['name'];
      final rootUriValue = package['rootUri'];
      if (name is! String || rootUriValue is! String) {
        continue;
      }
      if (name != 'pulumi' && !name.startsWith('pulumi_')) {
        continue;
      }

      final resolvedUri = packageConfig.uri.resolve(rootUriValue);
      if (resolvedUri.scheme != 'file') {
        continue;
      }
      final packageRoot = Directory.fromUri(resolvedUri).absolute;
      if (!packageRoot.existsSync()) {
        continue;
      }

      final cacheKey = '$name|${packageRoot.path}';
      final cached = _dependencyFingerprintCache.putIfAbsent(cacheKey, () {
        final packageEntries = <String>{};
        _appendPubspecFingerprint(
          packageEntries,
          'package:$name/pubspec.yaml',
          File(_join(packageRoot.path, 'pubspec.yaml')),
        );
        _appendDirectoryFingerprints(
          packageEntries,
          packageRoot,
          labelPrefix: 'package:$name',
        );
        final sorted = packageEntries.toList()..sort();
        return sorted;
      });
      entries.addAll(cached);
    }
    return entries;
  }
}

class IntegrationPrewarmApplier {
  IntegrationPrewarmApplier({
    required this.root,
    required this.manifestFile,
    required this.artifactRoot,
  });

  final Directory root;
  final File manifestFile;
  final Directory artifactRoot;

  Future<int> run() async {
    if (!manifestFile.existsSync()) {
      throw StateError('Prewarm manifest does not exist: ${manifestFile.path}');
    }
    final decoded = jsonDecode(manifestFile.readAsStringSync());
    if (decoded is! Map<String, dynamic> || decoded['schemaVersion'] != 1) {
      throw StateError('Unsupported prewarm manifest: ${manifestFile.path}');
    }
    final programsValue = decoded['programs'];
    final launcherValue = decoded['launcher'];
    if (programsValue is! List || launcherValue is! String) {
      throw StateError('Prewarm manifest is missing programs or launcher.');
    }

    final launcher = File(_join(artifactRoot.path, launcherValue)).absolute;
    if (!launcher.existsSync()) {
      throw StateError('Prewarm launcher does not exist: ${launcher.path}');
    }

    final byProject = <String, List<Map<String, dynamic>>>{};
    var ignored = 0;
    for (final rawProgram in programsValue) {
      if (rawProgram is! Map) {
        ignored++;
        continue;
      }
      final program = rawProgram.cast<String, dynamic>();
      if (program['sourceKind'] != 'pulumi' ||
          program['safeToOverride'] != true ||
          program['projectFile'] is! String ||
          program['programDirectory'] is! String ||
          program['fingerprint'] is! String) {
        ignored++;
        continue;
      }
      final projectFile = program['projectFile'] as String;
      byProject.putIfAbsent(projectFile, () => []).add(program);
    }

    var applied = 0;
    for (final entry in byProject.entries) {
      // A project with more than one concrete prewarmed program is ambiguous;
      // retain source fallback until the project explicitly identifies one.
      if (entry.value.length != 1) {
        ignored += entry.value.length;
        continue;
      }
      final program = entry.value.single;
      final projectFile = File(_join(root.path, entry.key));
      final programDirectory = Directory(
        _join(root.path, program['programDirectory'] as String),
      );
      final fingerprint = program['fingerprint'] as String;
      if (!projectFile.existsSync() || !programDirectory.existsSync()) {
        ignored++;
        continue;
      }
      if (!rewriteScalarDartRuntime(projectFile, launcher.path)) {
        ignored++;
        continue;
      }
      File(_join(programDirectory.path, '.pulumi-dart-kernel'))
          .writeAsStringSync('$fingerprint\n');
      applied++;
    }

    stderr.writeln(
      'Applied $applied prewarmed Dart runtime overrides; '
      '$ignored manifest entries left on source fallback.',
    );
    return 0;
  }
}

class PrewarmCandidate {
  const PrewarmCandidate({
    required this.programDirectory,
    required this.entryPoint,
    required this.sourceKind,
    required this.safeToOverride,
    this.projectFile,
  });

  final Directory programDirectory;
  final String entryPoint;
  final String sourceKind;
  final bool safeToOverride;
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
      'safeToOverride': candidate.safeToOverride,
      if (fingerprint != null) 'fingerprint': fingerprint,
      if (artifact != null) 'artifact': artifact,
      if (projectFile != null) 'projectFile': projectFile,
      if (programDirectory != null) 'programDirectory': programDirectory,
      if (reason != null) 'reason': reason,
    };
  }
}

class _PackagePreparation {
  const _PackagePreparation._({required this.success, this.reason});

  const _PackagePreparation.success() : this._(success: true);

  factory _PackagePreparation.failure(String reason) {
    return _PackagePreparation._(success: false, reason: reason);
  }

  final bool success;
  final String? reason;
}

List<PrewarmCandidate> discoverPrewarmCandidates(Directory root) {
  final candidates = <PrewarmCandidate>[];
  final seen = <String>{};
  final entities = root.listSync(recursive: true, followLinks: false);

  final projectFiles = entities
      .whereType<File>()
      .where((file) {
        final name = _basename(file.path);
        return name == 'Pulumi.yaml' || name == 'Pulumi.yml';
      })
      .toList()
    ..sort((left, right) => left.path.compareTo(right.path));

  for (final projectFile in projectFiles) {
    final candidate = _resolvePulumiCandidate(projectFile);
    if (candidate == null) {
      continue;
    }
    final key = '${candidate.programDirectory.absolute.path}|'
        '${candidate.entryPoint}|${candidate.sourceKind}';
    if (seen.add(key)) {
      candidates.add(candidate);
    }
  }

  final automationPubspecs = entities
      .whereType<File>()
      .where((file) {
        if (_basename(file.path) != 'pubspec.yaml') {
          return false;
        }
        final relative = _toSlash(_relativeTo(root.path, file.path));
        return relative.startsWith('automation/');
      })
      .toList()
    ..sort((left, right) => left.path.compareTo(right.path));

  for (final pubspec in automationPubspecs) {
    final programDirectory = pubspec.parent;
    final binDirectory = Directory(_join(programDirectory.path, 'bin'));
    if (!binDirectory.existsSync()) {
      continue;
    }
    final entrypoints = binDirectory
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
        safeToOverride: false,
      );
      final key = '${candidate.programDirectory.absolute.path}|'
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
            safeToOverride: !_hasEditVariants(projectDirectory),
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
          safeToOverride: !_hasEditVariants(projectDirectory),
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
        safeToOverride: !_hasEditVariants(projectDirectory),
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
        safeToOverride: !_hasEditVariants(projectDirectory),
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

bool _hasEditVariants(Directory projectDirectory) {
  final editName = RegExp(r'^(?:step|edit)[-_]?\d*$', caseSensitive: false);
  return projectDirectory
      .listSync(recursive: true, followLinks: false)
      .whereType<Directory>()
      .any((directory) {
        final name = _basename(directory.path);
        return name == 'edits' || editName.hasMatch(name);
      });
}

String? _resolveDefaultEntrypoint(
  Directory programDirectory, {
  String? token,
}) {
  final normalizedToken = token?.trim();
  if (normalizedToken != null &&
      normalizedToken.isNotEmpty &&
      normalizedToken != '.' &&
      !normalizedToken.contains('/') &&
      !normalizedToken.contains('\\')) {
    final filename = normalizedToken.endsWith('.dart')
        ? normalizedToken
        : '$normalizedToken.dart';
    final tokenCandidate = File(
      _join(programDirectory.path, 'bin/$filename'),
    );
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
    final packageName = readTopLevelScalar(
      pubspec.readAsStringSync(),
      'name',
    );
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
    return _toSlash(
      _relativeTo(programDirectory.path, dartFiles.single.path),
    );
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

void _appendPubspecFingerprint(
  Set<String> entries,
  String label,
  File file,
) {
  if (!file.existsSync()) {
    return;
  }
  final canonical = canonicalizePubspec(file.readAsStringSync());
  final contentHash = sha256.convert(utf8.encode(canonical)).toString();
  entries.add('$label|$contentHash');
}

void _appendDirectoryFingerprints(
  Set<String> entries,
  Directory root, {
  required String labelPrefix,
}) {
  for (final relativeDirectory in const ['bin', 'lib', 'tool']) {
    final directory = Directory(_join(root.path, relativeDirectory));
    if (!directory.existsSync()) {
      continue;
    }
    final files = directory
        .listSync(recursive: true, followLinks: false)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .toList()
      ..sort((left, right) => left.path.compareTo(right.path));
    for (final file in files) {
      final relative = _toSlash(_relativeTo(root.path, file.path));
      final contentHash = sha256.convert(file.readAsBytesSync()).toString();
      entries.add('$labelPrefix/$relative|$contentHash');
    }
  }
}

String canonicalizePubspec(String content) {
  var canonical = content.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
  canonical = canonical.replaceAllMapped(
    RegExp(r'(?m)^(\s*path\s*:\s*).*$'),
    (match) => '${match.group(1)}<local>',
  );
  canonical = canonical.replaceAllMapped(
    RegExp(r'path\s*:\s*[^,}\n]+'),
    (_) => 'path: <local>',
  );
  return canonical;
}

bool rewriteScalarDartRuntime(File projectFile, String binaryPath) {
  final original = projectFile.readAsStringSync();
  final hadTrailingNewline = original.endsWith('\n');
  final lines = const LineSplitter().convert(original).toList();
  final runtimePattern = RegExp(r'^runtime\s*:\s*dart\s*(?:#.*)?$');
  for (var index = 0; index < lines.length; index++) {
    if (!runtimePattern.hasMatch(lines[index].trimRight())) {
      continue;
    }
    lines.replaceRange(index, index + 1, [
      'runtime:',
      '  name: dart',
      '  options:',
      '    binary: ${jsonEncode(binaryPath)}',
    ]);
    var updated = lines.join('\n');
    if (hadTrailingNewline) {
      updated += '\n';
    }
    projectFile.writeAsStringSync(updated);
    return true;
  }
  return false;
}

String summarizeProcessOutput(ProcessResult result) {
  final combined = '${result.stderr}\n${result.stdout}'
      .trim()
      .replaceAll(RegExp(r'\s+'), ' ');
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
