import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

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
    required this.languageHost,
    required this.dartSdkVersion,
    required this.jobs,
  });

  final Directory root;
  final Directory output;
  final File languageHost;
  final String dartSdkVersion;
  final int jobs;

  final Map<String, Future<_PackagePreparation>> _packagePreparations = {};

  Future<int> run() async {
    if (!root.existsSync()) {
      throw StateError('Integration fixture root does not exist: ${root.path}');
    }
    if (!languageHost.existsSync()) {
      throw StateError(
        'Dart language host does not exist: ${languageHost.path}',
      );
    }

    if (output.existsSync()) {
      output.deleteSync(recursive: true);
    }
    output.createSync(recursive: true);
    Directory(_join(output.path, 'kernels')).createSync(recursive: true);

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

    final completed = results.whereType<support.PrewarmResult>().toList(
      growable: false,
    );
    final successful = completed.where((result) => result.success).toList();
    final skipped = completed.where((result) => !result.success).toList();

    final manifest = <String, Object?>{
      'schemaVersion': 1,
      'dartSdkVersion': dartSdkVersion,
      'compiler': 'dart-compile-kernel',
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

    final compile = await Process.run(
      languageHost.absolute.path,
      [
        '--prewarm-program',
        candidate.programDirectory.absolute.path,
        '--prewarm-entrypoint',
        candidate.entryPoint,
        '--prewarm-cache',
        output.absolute.path,
      ],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (compile.exitCode != 0) {
      return support.PrewarmResult.skipped(
        candidate,
        source,
        'language host prewarm failed: ${support.summarizeProcessOutput(compile)}',
      );
    }
    final outputLines = const LineSplitter()
        .convert(compile.stdout as String)
        .where((line) => line.trim().isNotEmpty)
        .toList();
    final response = outputLines.isEmpty ? null : jsonDecode(outputLines.last);
    if (response is! Map ||
        response['fingerprint'] is! String ||
        response['kernel'] is! String) {
      return support.PrewarmResult.skipped(
        candidate,
        source,
        'language host returned an invalid prewarm response',
      );
    }
    final fingerprint = response['fingerprint'] as String;
    final artifactRelative = 'kernels/$fingerprint.dill';

    return support.PrewarmResult.success(
      candidate: candidate,
      source: source,
      fingerprint: fingerprint,
      artifact: artifactRelative,
      projectFile: candidate.projectFile == null
          ? null
          : _relativeTo(root.path, candidate.projectFile!.path),
      programDirectory: _relativeTo(root.path, candidate.programDirectory.path),
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
