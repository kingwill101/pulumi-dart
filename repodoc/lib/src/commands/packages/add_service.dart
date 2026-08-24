import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

import '../../infrastructure/dart_cli.dart';
import '../../infrastructure/task_tooling.dart';
import '../schema/check_service.dart' as schemas;
import 'generate_service.dart' as generator;

final class PackageAddPlan {
  const PackageAddPlan({
    required this.provider,
    required this.schemaUrl,
    required this.schemaPath,
    required this.packagePath,
    required this.manifestPath,
  });

  final String provider;
  final String schemaUrl;
  final String schemaPath;
  final String packagePath;
  final String manifestPath;
}

final class PackageAdder {
  PackageAdder({Directory? repositoryRoot})
    : repositoryRoot = repositoryRoot ?? findRepoRoot();

  final Directory repositoryRoot;
  DartCli get _dart => DartCli.resolve();

  PackageAddPlan plan(String provider, {String? schemaUrl}) {
    if (!RegExp(r'^[a-z0-9][a-z0-9-]*$').hasMatch(provider)) {
      throw FormatException('Invalid provider name: $provider');
    }
    final manifest = File(
      p.join(repositoryRoot.path, 'packages/sdks/schema_sources.json'),
    );
    final root = _readManifest(manifest);
    final providers = root['providers'] as List<dynamic>;
    if (providers.whereType<Map<String, dynamic>>().any(
      (entry) => entry['name'] == provider,
    )) {
      throw StateError('Provider $provider is already tracked.');
    }
    final schemaPath = p.join(
      repositoryRoot.path,
      'packages/sdks/schemas/$provider.schema.json',
    );
    final packagePath = p.join(repositoryRoot.path, 'packages/sdks/$provider');
    for (final path in [schemaPath, packagePath]) {
      if (FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound) {
        throw StateError('Refusing to overwrite existing path: $path');
      }
    }
    _requireCleanManifest(manifest);
    return PackageAddPlan(
      provider: provider,
      schemaUrl:
          schemaUrl ??
          'https://www.pulumi.com/registry/packages/$provider/schema.json',
      schemaPath: schemaPath,
      packagePath: packagePath,
      manifestPath: manifest.path,
    );
  }

  Future<({List<int> bytes, String version, String source})>
  downloadAndValidate(PackageAddPlan plan) async {
    var bytes = await schemas.downloadSchema(plan.schemaUrl);
    var source = plan.schemaUrl;
    var decoded = jsonDecode(utf8.decode(bytes));
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Upstream schema is not a JSON object.');
    }
    if (decoded['name'] != plan.provider) {
      throw FormatException(
        'Expected schema ${plan.provider}, received ${decoded['name']}.',
      );
    }
    var version = decoded['version']?.toString() ?? '';
    if (version.isEmpty) {
      final repository = decoded['repository']?.toString() ?? '';
      final release = await schemas.resolveLatestSchemaRelease(repository);
      if (release == null) {
        throw const FormatException(
          'Schema has no version and its latest GitHub release could not be resolved.',
        );
      }
      version = release.version;
      if (release.schemaUrl case final releaseSchemaUrl?) {
        bytes = await schemas.downloadSchema(releaseSchemaUrl);
        source = releaseSchemaUrl;
        decoded = jsonDecode(utf8.decode(bytes));
        if (decoded is! Map<String, dynamic> ||
            decoded['name'] != plan.provider) {
          throw FormatException(
            'Release schema does not describe ${plan.provider}.',
          );
        }
        final embeddedVersion = decoded['version']?.toString() ?? '';
        if (embeddedVersion.isNotEmpty) version = embeddedVersion;
      }
    }
    Version.parse(version);
    return (bytes: bytes, version: version, source: source);
  }

  Future<void> apply(
    PackageAddPlan plan,
    List<int> schemaBytes,
    String version,
  ) async {
    final manifest = File(plan.manifestPath);
    final originalManifest = manifest.readAsStringSync();
    try {
      final root = _readManifest(manifest);
      final providers = root['providers'] as List<dynamic>;
      providers.add({
        'name': plan.provider,
        'schema_url': plan.schemaUrl,
        'local_schema_path': p.relative(
          plan.schemaPath,
          from: repositoryRoot.path,
        ),
        'package_pubspec_path': p.join(
          'packages',
          'sdks',
          plan.provider,
          'pubspec.yaml',
        ),
      });
      providers.sort(
        (left, right) => (left as Map<String, dynamic>)['name']
            .toString()
            .compareTo((right as Map<String, dynamic>)['name'].toString()),
      );
      manifest.writeAsStringSync(
        '${const JsonEncoder.withIndent('  ').convert(root)}\n',
        flush: true,
      );
      File(plan.schemaPath).writeAsBytesSync(schemaBytes, flush: true);
      exitCode = 0;
      await generator.main([
        '--provider',
        plan.provider,
        '--sdk-version',
        version,
      ]);
      if (exitCode != 0) throw StateError('Generation failed ($exitCode).');
      await _refreshWorkspace();
      final analyze = await _dart.start(
        ['analyze', plan.packagePath],
        workingDirectory: repositoryRoot.path,
        mode: ProcessStartMode.inheritStdio,
      );
      final analyzeStatus = await analyze.exitCode;
      if (analyzeStatus != 0) {
        throw StateError('Package analysis failed ($analyzeStatus).');
      }
    } catch (_) {
      manifest.writeAsStringSync(originalManifest, flush: true);
      if (File(plan.schemaPath).existsSync()) {
        File(plan.schemaPath).deleteSync();
      }
      _removeGeneratedPackage(plan.packagePath);
      await _refreshWorkspace();
      rethrow;
    }
  }

  Future<void> _refreshWorkspace() async {
    final result = await _dart.run([
      'pub',
      'get',
    ], workingDirectory: repositoryRoot.path);
    if (result.exitCode != 0) {
      throw StateError(
        'dart pub get failed (${result.exitCode}).\n${result.stderr}',
      );
    }
  }

  void _removeGeneratedPackage(String packagePath) {
    final package = Directory(packagePath);
    if (!package.existsSync()) return;
    final rollback = Directory('$packagePath.repodoc-rollback-$pid');
    package.renameSync(rollback.path);
    rollback.deleteSync(recursive: true);
  }

  Map<String, dynamic> _readManifest(File file) {
    final decoded = jsonDecode(file.readAsStringSync());
    if (decoded is! Map<String, dynamic> || decoded['providers'] is! List) {
      throw const FormatException('Invalid schema source manifest.');
    }
    return decoded;
  }

  void _requireCleanManifest(File manifest) {
    final path = p.relative(manifest.path, from: repositoryRoot.path);
    for (final args in [
      ['diff', '--quiet', '--', path],
      ['diff', '--cached', '--quiet', '--', path],
    ]) {
      final result = Process.runSync(
        'git',
        args,
        workingDirectory: repositoryRoot.path,
      );
      if (result.exitCode != 0) {
        throw StateError('Refusing to overwrite changes to $path.');
      }
    }
  }
}
