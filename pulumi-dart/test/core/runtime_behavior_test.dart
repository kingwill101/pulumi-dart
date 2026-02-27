import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:pulumi/src/callback_server.dart';
import 'package:pulumi/src/invoke.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/resource_hooks.dart';
import 'package:pulumi/src/resource/resource_transformation.dart';
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

class _FakeCallbackServer implements ICallbackServer {
  bool awaitCalled = false;
  bool shutdownCalled = false;

  @override
  Future<void> awaitStackRegistrations() async {
    awaitCalled = true;
  }

  @override
  void shutdown() {
    shutdownCalled = true;
  }

  @override
  Future<String> registerErrorHook(ErrorHook hook) async =>
      throw UnimplementedError();

  @override
  Future<String> registerResourceHook(ResourceHook hook) async =>
      throw UnimplementedError();

  @override
  void registerStackInvokeTransform(InvokeTransform callback) =>
      throw UnimplementedError();

  @override
  Future<Callback> registerStackInvokeTransformAsync(
    InvokeTransform callback,
  ) async =>
      throw UnimplementedError();

  @override
  void registerStackTransform(ResourceTransform callback) =>
      throw UnimplementedError();

  @override
  Future<Callback> registerTransform(ResourceTransform callback) async =>
      throw UnimplementedError();
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

    test('query and legacy apply getters mirror settings', () {
      runtime.settings.queryMode = true;
      runtime.settings.legacyApply = true;

      expect(runtime.isQueryMode, isTrue);
      expect(runtime.isLegacyApplyEnabled, isTrue);
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

    test('disconnect waits for rpc keep-alive release', () async {
      final release = runtime.rpcKeepAlive();
      var disconnected = false;

      final disconnectFuture = runtime.disconnect().then((_) {
        disconnected = true;
      });

      await Future<void>.delayed(Duration.zero);
      expect(disconnected, isFalse);

      release();
      await disconnectFuture;
      expect(disconnected, isTrue);
    });

    test('rpcKeepAlive drains only after all releases', () async {
      final releaseOne = runtime.rpcKeepAlive();
      final releaseTwo = runtime.rpcKeepAlive();
      var disconnected = false;

      final disconnectFuture = runtime.disconnect().then((_) {
        disconnected = true;
      });

      await Future<void>.delayed(Duration.zero);
      expect(disconnected, isFalse);

      releaseOne();
      await Future<void>.delayed(Duration.zero);
      expect(disconnected, isFalse);

      releaseTwo();
      await disconnectFuture;
      expect(disconnected, isTrue);
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

    test('setMockOptions wires monitor and reuses runtime defaults', () {
      final channel = ClientChannel(
        '127.0.0.1',
        port: 1,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
      addTearDown(() async {
        await channel.shutdown();
      });
      final monitor = ResourceMonitorClient(channel);
      runtime.resetOptions(
        project: 'proj',
        stack: 'dev',
        preview: false,
        organization: 'org',
      );

      runtime.setMockOptions(monitor, preview: true);

      expect(runtime.getMonitor(), same(monitor));
      expect(runtime.project, equals('proj'));
      expect(runtime.stack, equals('dev'));
      expect(runtime.isDryRun, isTrue);
      expect(runtime.organization, equals('org'));
    });

    test('setMockOptions defaults preview to existing runtime dry-run value', () {
      final channel = ClientChannel(
        '127.0.0.1',
        port: 1,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
      addTearDown(() async {
        await channel.shutdown();
      });
      final monitor = ResourceMonitorClient(channel);

      runtime.resetOptions(
        project: 'proj',
        stack: 'dev',
        preview: true,
        organization: 'org',
      );
      runtime.setMockOptions(monitor);

      expect(runtime.isDryRun, isTrue);
    });

    test('awaitStackRegistrations delegates to callbacks when present', () async {
      final callbacks = _FakeCallbackServer();
      runtime.callbacks = callbacks;

      await runtime.awaitStackRegistrations();

      expect(callbacks.awaitCalled, isTrue);
    });

    test('terminateRpcs clears keep-alive and callbacks state', () async {
      final callbacks = _FakeCallbackServer();
      runtime.callbacks = callbacks;
      final release = runtime.rpcKeepAlive();

      runtime.terminateRpcs();
      await runtime.disconnect();

      expect(callbacks.shutdownCalled, isTrue);
      release();
    });
  });
}
