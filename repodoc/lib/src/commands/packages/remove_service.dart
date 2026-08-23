import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import '../../infrastructure/task_tooling.dart';

final class PackageRemovalPlan {
  const PackageRemovalPlan({
    required this.provider,
    required this.manifestPath,
    required this.packagePath,
    required this.schemaPath,
    required this.examplesPath,
  });

  final String provider;
  final String manifestPath;
  final String packagePath;
  final String schemaPath;
  final String examplesPath;

  List<String> get paths => [packagePath, schemaPath, examplesPath];
}

final class PackageRemover {
  PackageRemover({Directory? repositoryRoot})
    : repositoryRoot = repositoryRoot ?? findRepoRoot();

  final Directory repositoryRoot;

  PackageRemovalPlan plan(String provider) {
    if (!RegExp(r'^[a-z0-9][a-z0-9-]*$').hasMatch(provider)) {
      throw FormatException('Invalid provider name: $provider');
    }
    final manifest = File(
      p.join(repositoryRoot.path, 'packages/sdks/schema_sources.json'),
    );
    final root = _readManifest(manifest);
    final providers = root['providers'] as List<dynamic>;
    final entry = providers.whereType<Map<String, dynamic>>().where(
      (candidate) => candidate['name'] == provider,
    );
    if (entry.length != 1) {
      throw StateError('Provider $provider is not tracked exactly once.');
    }
    final source = entry.single;
    final pubspecPath = _requiredString(source, 'package_pubspec_path');
    return PackageRemovalPlan(
      provider: provider,
      manifestPath: manifest.path,
      packagePath: p.dirname(_insideRepository(pubspecPath)),
      schemaPath: _insideRepository(
        _requiredString(source, 'local_schema_path'),
      ),
      examplesPath: _insideRepository(p.join('examples', provider)),
    );
  }

  Future<void> apply(
    PackageRemovalPlan plan, {
    bool requireClean = true,
    bool refreshWorkspace = true,
  }) async {
    if (requireClean) _requireClean(plan);
    final manifest = File(plan.manifestPath);
    final root = _readManifest(manifest);
    final providers = root['providers'] as List<dynamic>;
    providers.removeWhere(
      (entry) =>
          entry is Map<String, dynamic> && entry['name'] == plan.provider,
    );
    manifest.writeAsStringSync(
      '${const JsonEncoder.withIndent('  ').convert(root)}\n',
      flush: true,
    );
    for (final path in plan.paths) {
      final entityType = FileSystemEntity.typeSync(path, followLinks: false);
      if (entityType == FileSystemEntityType.directory) {
        Directory(path).deleteSync(recursive: true);
      } else if (entityType != FileSystemEntityType.notFound) {
        File(path).deleteSync();
      }
    }
    if (!refreshWorkspace) return;
    await refreshWorkspacePackages();
  }

  Future<void> refreshWorkspacePackages() async {
    final pubGet = await Process.run('dart', [
      'pub',
      'get',
    ], workingDirectory: repositoryRoot.path);
    if (pubGet.exitCode != 0) {
      throw StateError(
        'dart pub get failed (${pubGet.exitCode}).\n${pubGet.stderr}',
      );
    }
  }

  void requireClean(Iterable<PackageRemovalPlan> plans) {
    final paths = plans
        .expand((plan) => [plan.manifestPath, ...plan.paths])
        .map((path) => p.relative(path, from: repositoryRoot.path))
        .toSet()
        .toList();
    _requireCleanPaths(paths, plans.map((plan) => plan.provider).join(', '));
  }

  Map<String, dynamic> _readManifest(File file) {
    final decoded = jsonDecode(file.readAsStringSync());
    if (decoded is! Map<String, dynamic> || decoded['providers'] is! List) {
      throw const FormatException('Invalid schema source manifest.');
    }
    return decoded;
  }

  String _requiredString(Map<String, dynamic> entry, String key) {
    final value = entry[key];
    if (value is! String || value.isEmpty) {
      throw FormatException('Provider entry is missing $key.');
    }
    return value;
  }

  String _insideRepository(String relativePath) {
    final resolved = p.normalize(p.join(repositoryRoot.path, relativePath));
    if (!p.isWithin(repositoryRoot.path, resolved)) {
      throw FormatException('Path escapes repository: $relativePath');
    }
    return resolved;
  }

  void _requireClean(PackageRemovalPlan plan) {
    final paths = [
      plan.manifestPath,
      ...plan.paths,
    ].map((path) => p.relative(path, from: repositoryRoot.path)).toList();
    _requireCleanPaths(paths, plan.provider);
  }

  void _requireCleanPaths(List<String> paths, String scope) {
    final status = Process.runSync('git', [
      'status',
      '--porcelain',
      '--',
      ...paths,
    ], workingDirectory: repositoryRoot.path);
    if (status.exitCode != 0) {
      throw StateError('Unable to inspect provider paths with git.');
    }
    final changes = (status.stdout as String)
        .split('\n')
        .where((line) => line.isNotEmpty && !line.endsWith('/.DS_Store'))
        .toList();
    if (changes.isNotEmpty) {
      throw StateError(
        'Refusing to remove $scope over existing changes: '
        '${changes.first.substring(3)}',
      );
    }
  }
}
