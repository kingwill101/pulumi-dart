import 'dart:io';

import 'package:pulumi/src/settings.dart';
import 'package:test/test.dart';

Settings _cloneSettings(Settings settings) {
  return Settings(
    project: settings.project,
    stack: settings.stack,
    parallel: settings.parallel,
    engineAddr: settings.engineAddr,
    monitorAddr: settings.monitorAddr,
    dryRun: settings.dryRun,
    testModeEnabled: settings.testModeEnabled,
    queryMode: settings.queryMode,
    legacyApply: settings.legacyApply,
    cacheDynamicProviders: settings.cacheDynamicProviders,
    organization: settings.organization,
    syncDir: settings.syncDir,
  );
}

void main() {
  group('runtime behavior', () {
    late Runtime runtime;
    late Settings originalSettings;

    setUp(() {
      runtime = Runtime();
      originalSettings = _cloneSettings(runtime.settings);
      runtime.disconnectSync();
      runtime.resetOptions(
        project: 'project',
        stack: 'stack',
        parallel: 0,
        monitorAddr: null,
        engineAddr: null,
        preview: false,
        organization: null,
      );
    });

    tearDown(() {
      runtime.disconnectSync();
      runtime.settings = _cloneSettings(originalSettings);
      runtime.supportsSecrets = false;
      runtime.supportsResourceReferences = false;
      runtime.supportsOutputValues = false;
      runtime.supportsDeletedWith = false;
      runtime.supportsAliasSpecs = false;
      runtime.supportsTransforms = false;
      runtime.supportsInvokeTransforms = false;
      runtime.stackResource = null;
    });

    test('organization throws when not configured', () {
      expect(() => runtime.organization, throwsException);
    });

    test(
      'cacheDynamicProviders getter reflects settings and resetOptions behavior',
      () {
        runtime.settings.cacheDynamicProviders = false;
        expect(runtime.cacheDynamicProviders, isFalse);

        runtime.resetOptions(project: 'proj', stack: 'dev', parallel: 0);

        expect(runtime.cacheDynamicProviders, isTrue);
      },
    );

    test('resetOptions updates settings and clears feature flags', () {
      runtime.supportsSecrets = true;
      runtime.supportsResourceReferences = true;
      runtime.supportsOutputValues = true;
      runtime.supportsDeletedWith = true;
      runtime.supportsAliasSpecs = true;
      runtime.supportsTransforms = true;
      runtime.supportsInvokeTransforms = true;

      runtime.resetOptions(
        project: 'proj',
        stack: 'dev',
        parallel: 1,
        preview: true,
        organization: 'org',
      );

      expect(runtime.project, equals('proj'));
      expect(runtime.stack, equals('dev'));
      expect(runtime.serialize(), isTrue);
      expect(runtime.isDryRun, isTrue);
      expect(runtime.organization, equals('org'));
      expect(runtime.supportsSecrets, isFalse);
      expect(runtime.supportsResourceReferences, isFalse);
      expect(runtime.supportsOutputValues, isFalse);
      expect(runtime.supportsDeletedWith, isFalse);
      expect(runtime.supportsAliasSpecs, isFalse);
      expect(runtime.supportsTransforms, isFalse);
      expect(runtime.supportsInvokeTransforms, isFalse);
    });

    test('serialize is false for parallel values beyond one', () {
      runtime.resetOptions(parallel: 2);
      expect(runtime.serialize(), isFalse);

      runtime.resetOptions(parallel: 8);
      expect(runtime.serialize(), isFalse);
    });

    test('project and stack getters default to empty strings when unset', () {
      runtime.settings.project = null;
      runtime.settings.stack = null;

      expect(runtime.project, equals(''));
      expect(runtime.stack, equals(''));
    });

    test('organization edge semantics for null and empty string', () {
      runtime.settings.organization = null;
      expect(
        () => runtime.organization,
        throwsA(
          isA<Exception>().having(
            (error) => error.toString(),
            'message',
            contains('Missing organization name'),
          ),
        ),
      );

      runtime.settings.organization = '';
      expect(runtime.organization, equals(''));
    });

    test('getMonitor rejects invalid endpoint shape', () {
      runtime.resetOptions(monitorAddr: 'http://:1234');
      expect(() => runtime.getMonitor(), throwsStateError);
      expect(runtime.hasMonitor, isFalse);
    });

    test('getEngine rejects invalid endpoint shape', () {
      runtime.resetOptions(engineAddr: 'http://:1234');
      expect(() => runtime.getEngine(), throwsStateError);
      expect(runtime.hasEngine, isFalse);
    });

    test('tryGetSyncInvokes returns null when syncDir is unset', () {
      runtime.resetOptions();
      expect(runtime.tryGetSyncInvokes(), isNull);
    });

    test('tryGetSyncInvokes opens request/response files when configured', () {
      final tempDir = Directory.systemTemp.createTempSync(
        'pulumi-dart-runtime-sync-',
      );
      addTearDown(() => tempDir.deleteSync(recursive: true));

      File('${tempDir.path}/invoke_res').writeAsStringSync('');

      runtime.resetOptions();
      runtime.settings.syncDir = tempDir.path;
      final syncInvokes = runtime.tryGetSyncInvokes();

      expect(syncInvokes, isNotNull);
      syncInvokes!.requests.closeSync();
      syncInvokes.responses.closeSync();
    });
  });
}
