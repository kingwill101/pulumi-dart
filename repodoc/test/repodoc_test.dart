import 'package:test/test.dart';

import 'package:repodoc/repodoc.dart';
import 'package:repodoc/src/commands/schema/check_service.dart';
import 'package:repodoc/src/commands/packages/update_service.dart';

void main() {
  test('registers commands by subsystem namespace', () {
    final runner = createRepodocRunner();

    expect(
      runner.commands.keys,
      containsAll(<String>[
        'schema:check',
        'packages:generate',
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

  test('schema result reports drift across providers', () {
    final result = SchemaCheckResult([
      {'provider': 'aws', 'drift': false},
      {'provider': 'gcp', 'drift': true},
    ]);

    expect(result.hasDrift, isTrue);
    expect(result.output(singleProvider: false), hasLength(2));
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
    );

    expect(
      () => updater.validate(plan, allowSameVersion: false),
      throwsA(isA<StateError>()),
    );
  });
}
