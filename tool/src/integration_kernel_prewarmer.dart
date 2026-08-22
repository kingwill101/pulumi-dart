import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';

import 'integration_prewarm_impl.dart' as support;

/// Compiles integration programs to content-addressed Dart kernel snapshots.
///
/// Discovery and manifest application remain in [support]. Keeping the kernel
/// compiler separate lets the repository prepare fixtures against the local
/// SDK before any package resolution or fingerprinting occurs.
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

    final candidates = support.discoverPrewarmCandidates(root);
    stderr.writeln(
      'Discovered ${candidates.length} Dart integration entrypoints to prewarm.',
    );

    final results = List<support.PrewarmResult?>.filled(
      candidates.length,
      null,
    );
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
        );
      }
    }

    final workerCount = candidates.isEmpty
        ? 1
        : math.min(jobs, candidates.length);
    await Future.wait(List.generate(workerCount, (_) => worker()));

    final completed = results
        .whereType<support.PrewarmResult>()
        .toList(growable: false);
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

  Future<support.PrewarmResult> _prewarmCandidate({
    required support.PrewarmCandidate candidate,
    required int index,
  }) async {
    final source = _relativeTo(root.path, candidate.programDirectory.path);
    stderr.writeln('Prewarming $source (${candidate.entryPoint})');

    final preparation = await _preparePackage(candidate.programDirectory);
    if (!preparation.success) {
      return support.PrewarmResult.skipped(
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
        return support.PrewarmResult.skipped(
          candidate,
          source,
          'dart compile kernel failed: '
              '${support.summarizeProcessOutput(compile)}',
        );
      }

      if (artifact.existsSync()) {
        temporaryArtifact.deleteSync();
      } else {
        temporaryArtifact.renameSync(artifact.path);
      }
    }

    return support.PrewarmResult.success(
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
          'dart pub get failed: ${support.summarizeProcessOutput(pubGet)}',
        );
      }
      return const _PackagePreparation.success();
    });
  }

  String _portableProgramFingerprint(support.PrewarmCandidate candidate) {
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

class _PackagePreparation {
  const _PackagePreparation._({required this.success, this.reason});

  const _PackagePreparation.success() : this._(success: true);

  factory _PackagePreparation.failure(String reason) {
    return _PackagePreparation._(success: false, reason: reason);
  }

  final bool success;
  final String? reason;
}

void _appendPubspecFingerprint(
  Set<String> entries,
  String label,
  File file,
) {
  if (!file.existsSync()) {
    return;
  }
  final canonical = _canonicalizePubspec(file.readAsStringSync());
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

String _canonicalizePubspec(String content) {
  var canonical = content.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
  canonical = canonical.replaceAllMapped(
    RegExp(r'^(\s*path\s*:\s*).*$', multiLine: true),
    (match) => '${match.group(1)}<local>',
  );
  canonical = canonical.replaceAllMapped(
    RegExp(r'path\s*:\s*[^,}\n]+'),
    (_) => 'path: <local>',
  );
  return canonical;
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

String _toSlash(String path) => path.replaceAll('\\', '/');
