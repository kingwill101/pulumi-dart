import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'package:repodoc/repodoc.dart';
import 'package:repodoc/src/commands/schema/check_service.dart';
import 'package:repodoc/src/commands/packages/update_service.dart';
import 'package:repodoc/src/commands/packages/remove_service.dart';

void main() {
  test('registers commands by subsystem namespace', () {
    final runner = createRepodocRunner();

    expect(
      runner.commands.keys,
      containsAll(<String>[
        'schema:check',
        'packages:generate',
        'packages:remove',
        'packages:update',
        'packages:check-workspace',
        'parity:integration',
        'parity:sdk',
        'integration:matrix',
        'integration:run',
        'integration:prewarm',
        'tools:check',
      ]),
    );
  });

  test('namespace help exposes package commands', () async {
    final runner = createRepodocRunner();
    final result = await runner.run(['packages']);

    expect(result, isNull);
  });

  test('package update requires one provider', () async {
    final runner = createRepodocRunner();

    expect(await runner.run(['packages:update']), 64);
  });

  test('package removal requires one provider', () async {
    final runner = createRepodocRunner();

    expect(await runner.run(['packages:remove']), 64);
  });

  test(
    'package remover updates tracking and deletes provider artifacts',
    () async {
      final root = Directory.systemTemp.createTempSync('repodoc-remove-');
      addTearDown(() => root.deleteSync(recursive: true));
      final package = Directory('${root.path}/packages/sdks/sample')
        ..createSync(recursive: true);
      File(
        '${package.path}/pubspec.yaml',
      ).writeAsStringSync('name: pulumi_sample\n');
      final schema =
          File('${root.path}/packages/sdks/schemas/sample.schema.json')
            ..createSync(recursive: true)
            ..writeAsStringSync('{}');
      final examples = Directory('${root.path}/examples/sample')
        ..createSync(recursive: true);
      File('${examples.path}/README.md').writeAsStringSync('sample');
      final manifest = File('${root.path}/packages/sdks/schema_sources.json')
        ..writeAsStringSync(
          jsonEncode({
            'providers': [
              {
                'name': 'sample',
                'local_schema_path': 'packages/sdks/schemas/sample.schema.json',
                'package_pubspec_path': 'packages/sdks/sample/pubspec.yaml',
              },
              {
                'name': 'kept',
                'local_schema_path': 'packages/sdks/schemas/kept.schema.json',
                'package_pubspec_path': 'packages/sdks/kept/pubspec.yaml',
              },
            ],
          }),
        );
      final remover = PackageRemover(repositoryRoot: root);

      final plan = remover.plan('sample');
      await remover.apply(plan, requireClean: false, refreshWorkspace: false);

      expect(package.existsSync(), isFalse);
      expect(schema.existsSync(), isFalse);
      expect(examples.existsSync(), isFalse);
      final decoded =
          jsonDecode(manifest.readAsStringSync()) as Map<String, dynamic>;
      expect((decoded['providers'] as List).map((entry) => entry['name']), [
        'kept',
      ]);
    },
  );

  test('schema result reports drift across providers', () {
    final result = SchemaCheckResult([
      {'provider': 'aws', 'drift': false},
      {'provider': 'gcp', 'drift': true},
    ]);

    expect(result.hasDrift, isTrue);
    expect(result.output(singleProvider: false), hasLength(2));
  });

  test('schema result accepts package version for versionless schemas', () {
    final result = SchemaCheckResult([
      {
        'provider': 'azure-native',
        'local_schema_version': '',
        'local_version': '3.26.0',
        'local_version_source': 'package',
        'upstream_version': '3.26.0',
        'upstream_version_changed': false,
        'upstream_checksum_changed': false,
        'drift': false,
      },
    ]);

    expect(result.hasDrift, isFalse);
    expect(result.reports.single['local_version_source'], 'package');
  });

  test('package updater rejects same-version content changes by default', () {
    final updater = PackageUpdater();
    const plan = PackageUpdatePlan(
      provider: 'aws',
      localVersion: '7.43.0',
      upstreamVersion: '7.43.0',
      schemaUrl: 'https://example.test/schema.json',
      schemaSource: 'github_release_asset',
      schemaPath: '/tmp/aws.schema.json',
      packagePath: '/tmp/aws',
      contentChanged: true,
      versionChanged: false,
    );

    expect(
      () => updater.validate(plan, allowSameVersion: false),
      throwsA(isA<StateError>()),
    );
  });

  test('package updater rejects version regressions', () {
    final updater = PackageUpdater();
    const plan = PackageUpdatePlan(
      provider: 'aws',
      localVersion: '7.43.0',
      upstreamVersion: '7.42.0',
      schemaUrl: 'https://example.test/schema.json',
      schemaSource: 'github_release_asset',
      schemaPath: '/tmp/aws.schema.json',
      packagePath: '/tmp/aws',
      contentChanged: true,
      versionChanged: true,
    );

    expect(
      () => updater.validate(plan, allowSameVersion: false),
      throwsA(isA<StateError>()),
    );
  });
}
