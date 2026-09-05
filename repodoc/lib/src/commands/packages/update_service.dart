import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

import '../../infrastructure/dart_cli.dart';
import '../../infrastructure/task_tooling.dart';
import '../schema/check_service.dart' as schemas;
import 'generate_service.dart' as generator;

final class PackageUpdatePlan {
  const PackageUpdatePlan({
    required this.provider,
    required this.localVersion,
    required this.localPackageVersion,
    required this.upstreamVersion,
    required this.targetPackageVersion,
    required this.schemaUrl,
    required this.schemaSource,
    required this.schemaPath,
    required this.packagePath,
    required this.contentChanged,
    required this.versionChanged,
    this.dependencyPubspecPaths = const [],
  });

  final String provider;
  final String localVersion;
  final String localPackageVersion;
  final String upstreamVersion;
  final String targetPackageVersion;
  final String schemaUrl;
  final String schemaSource;
  final String schemaPath;
  final String packagePath;
  final bool contentChanged;
  final bool versionChanged;
  final List<String> dependencyPubspecPaths;
}

final class PackageUpdater {
  PackageUpdater({Directory? repositoryRoot})
    : repositoryRoot = repositoryRoot ?? findRepoRoot();

  final Directory repositoryRoot;
  DartCli get _dart => DartCli.resolve();

  Future<PackageUpdatePlan> plan(String provider) async {
    final result = await schemas.checkSchemas(provider: provider);
    final report = result.reports.single;
    final schemaPath = _string(report, 'local_schema_path');
    final packagePubspec = _string(report, 'package_pubspec_path');
    return PackageUpdatePlan(
      provider: provider,
      localVersion: _string(report, 'local_version'),
      localPackageVersion: _string(report, 'package_version'),
      upstreamVersion: _string(report, 'upstream_version'),
      targetPackageVersion: providerPackageVersion(
        _string(report, 'upstream_version'),
      ),
      schemaUrl: _string(report, 'schema_url'),
      schemaSource: _string(report, 'schema_source'),
      schemaPath: p.join(repositoryRoot.path, schemaPath),
      packagePath: p.dirname(p.join(repositoryRoot.path, packagePubspec)),
      contentChanged: report['upstream_checksum_changed'] == true,
      versionChanged: report['upstream_version_changed'] == true,
      dependencyPubspecPaths: _exactDependencyPubspecs(
        provider,
        _string(report, 'package_version'),
      ),
    );
  }

  void validate(PackageUpdatePlan plan, {required bool allowSameVersion}) {
    if (!plan.contentChanged && !plan.versionChanged) {
      throw StateError('${plan.provider} is already current.');
    }
    if (plan.upstreamVersion.isEmpty) {
      throw StateError('Could not resolve an upstream release version.');
    }

    final local = Version.parse(plan.localVersion);
    final upstream = Version.parse(plan.upstreamVersion);
    if (upstream < local) {
      throw StateError(
        'Refusing version regression ${plan.localVersion} -> '
        '${plan.upstreamVersion}.',
      );
    }
    if (upstream == local && !allowSameVersion) {
      throw StateError(
        'Schema content changed without a version change. '
        'Pass --allow-same-version to review this exceptional update.',
      );
    }
    _requireCleanScope(plan);
  }

  Future<List<int>> downloadAndValidate(PackageUpdatePlan plan) async {
    final bytes = await schemas.downloadSchema(plan.schemaUrl);
    final decoded = jsonDecode(utf8.decode(bytes));
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Upstream schema is not a JSON object.');
    }
    final name = decoded['name']?.toString() ?? '';
    if (name != plan.provider) {
      throw FormatException(
        'Expected schema ${plan.provider}, received ${name.isEmpty ? '(unnamed)' : name}.',
      );
    }
    final embeddedVersion = decoded['version']?.toString() ?? '';
    if (embeddedVersion.isNotEmpty &&
        Version.parse(embeddedVersion) != Version.parse(plan.upstreamVersion)) {
      throw FormatException(
        'Release ${plan.upstreamVersion} contains schema version '
        '$embeddedVersion.',
      );
    }
    return bytes;
  }

  Future<int> apply(PackageUpdatePlan plan, List<int> schemaBytes) async {
    final schema = File(plan.schemaPath);
    final temporary = File('${schema.path}.repodoc-new-$pid');
    final backup = File('${schema.path}.repodoc-backup-$pid');
    temporary.writeAsBytesSync(schemaBytes, flush: true);
    schema.renameSync(backup.path);
    temporary.renameSync(schema.path);

    try {
      _updateExactDependencies(plan);
      exitCode = 0;
      await generator.main([
        '--provider',
        plan.provider,
        '--sdk-version',
        plan.targetPackageVersion,
      ]);
      if (exitCode != 0) throw StateError('Generation failed ($exitCode).');

      final analyze = await _dart.start(
        ['analyze', '--no-fatal-warnings', plan.packagePath],
        workingDirectory: repositoryRoot.path,
        mode: ProcessStartMode.inheritStdio,
      );
      final analyzeStatus = await analyze.exitCode;
      if (analyzeStatus != 0) {
        throw StateError('Package analysis failed ($analyzeStatus).');
      }
      backup.deleteSync();
      return 0;
    } catch (_) {
      if (schema.existsSync()) schema.deleteSync();
      backup.renameSync(schema.path);
      await _restorePackage(plan);
      rethrow;
    } finally {
      if (temporary.existsSync()) temporary.deleteSync();
    }
  }

  Future<String> diffStat(PackageUpdatePlan plan) async {
    final schemaPath = _gitPath(plan.schemaPath);
    final packagePath = _gitPath(plan.packagePath);
    final result = await Process.run('git', [
      'diff',
      '--stat',
      '--',
      schemaPath,
      packagePath,
      ...plan.dependencyPubspecPaths.map(_gitPath),
    ], workingDirectory: repositoryRoot.path);
    return (result.stdout as String).trimRight();
  }

  void _requireCleanScope(PackageUpdatePlan plan) {
    final schemaPath = _gitPath(plan.schemaPath);
    final packagePath = _gitPath(plan.packagePath);
    final dependencyPaths = plan.dependencyPubspecPaths.map(_gitPath).toList();
    for (final args in [
      ['diff', '--quiet', '--', schemaPath, packagePath, ...dependencyPaths],
      [
        'diff',
        '--cached',
        '--quiet',
        '--',
        schemaPath,
        packagePath,
        ...dependencyPaths,
      ],
    ]) {
      final result = Process.runSync(
        'git',
        args,
        workingDirectory: repositoryRoot.path,
      );
      if (result.exitCode != 0) {
        throw StateError(
          'Refusing to overwrite existing changes for ${plan.provider}.',
        );
      }
    }

    final untracked = Process.runSync('git', [
      'ls-files',
      '--others',
      '--exclude-standard',
      '--',
      schemaPath,
      packagePath,
      ...dependencyPaths,
    ], workingDirectory: repositoryRoot.path);
    final unexpected = (untracked.stdout as String)
        .split('\n')
        .where((path) => path.isNotEmpty && !path.endsWith('/.DS_Store'))
        .toList();
    if (unexpected.isNotEmpty) {
      throw StateError(
        'Refusing to overwrite untracked files for ${plan.provider}: '
        '${unexpected.first}',
      );
    }
  }

  Future<void> _restorePackage(PackageUpdatePlan plan) async {
    final packagePath = _gitPath(plan.packagePath);
    await Process.run('git', [
      'restore',
      '--',
      packagePath,
      ...plan.dependencyPubspecPaths.map(_gitPath),
    ], workingDirectory: repositoryRoot.path);
    await Process.run('git', [
      'clean',
      '-f',
      '-d',
      '-e',
      '.DS_Store',
      '--',
      packagePath,
    ], workingDirectory: repositoryRoot.path);
  }

  String _gitPath(String path) => p.relative(path, from: repositoryRoot.path);

  List<String> _exactDependencyPubspecs(String provider, String version) {
    final packageName = 'pulumi_${provider.replaceAll('-', '_')}';
    final dependency = RegExp(
      '''^\\s*${RegExp.escape(packageName)}:\\s*['"]?${RegExp.escape(version)}['"]?\\s*(?:#.*)?\$''',
    );
    final paths = <String>[];
    for (final rootName in ['packages', 'examples']) {
      final root = Directory(p.join(repositoryRoot.path, rootName));
      if (!root.existsSync()) continue;
      for (final entity in root.listSync(recursive: true, followLinks: false)) {
        if (entity is! File || p.basename(entity.path) != 'pubspec.yaml') {
          continue;
        }
        if (entity.readAsLinesSync().any(dependency.hasMatch)) {
          paths.add(entity.path);
        }
      }
    }
    paths.sort();
    return paths;
  }

  void _updateExactDependencies(PackageUpdatePlan plan) {
    final packageName = 'pulumi_${plan.provider.replaceAll('-', '_')}';
    final pattern = RegExp(
      '''^(\\s*${RegExp.escape(packageName)}:\\s*)(['"]?)${RegExp.escape(plan.localPackageVersion)}(['"]?)(\\s*(?:#.*)?)\$''',
    );
    for (final path in plan.dependencyPubspecPaths) {
      final file = File(path);
      final updated = file
          .readAsLinesSync()
          .map((line) {
            final match = pattern.firstMatch(line);
            if (match == null) return line;
            final openingQuote = match.group(2) ?? '';
            final closingQuote = match.group(3) ?? '';
            return '${match.group(1)}$openingQuote${plan.targetPackageVersion}'
                '$closingQuote${match.group(4)}';
          })
          .join('\n');
      file.writeAsStringSync('$updated\n');
    }
  }
}

String providerPackageVersion(String upstreamVersion) {
  final version = Version.parse(upstreamVersion);
  return Version(
    version.major,
    version.minor,
    version.patch,
    pre: version.preRelease.isEmpty ? null : version.preRelease.join('.'),
    build: '1',
  ).toString();
}

String _string(Map<String, dynamic> report, String key) =>
    report[key]?.toString() ?? '';
