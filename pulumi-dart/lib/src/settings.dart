import 'dart:async';
import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/component_resource.dart';
import 'package:pulumi/src/store/store.dart';
import 'package:path/path.dart' as path;

import 'callback_server.dart';

class Runtime {
  static final Runtime _instance = Runtime._internal();
  factory Runtime() => _instance;
  Runtime._internal();

  Settings settings = Settings();
  ResourceMonitorClient? _monitor;
  ClientChannel? _monitorChannel;
  EngineClient? _engine;
  ClientChannel? _engineChannel;
  bool supportsSecrets = false;
  bool supportsResourceReferences = false;
  bool supportsOutputValues = false;
  bool supportsDeletedWith = false;
  bool supportsAliasSpecs = false;
  bool supportsTransforms = false;
  bool supportsInvokeTransforms = false;
  ICallbackServer? callbacks;
  ComponentResource? stackResource;

  static const int maxRPCMessageSize = 1024 * 1024 * 400; // 400 MB

  bool get isDryRun => settings.dryRun;
  bool get isQueryMode => settings.queryMode;
  bool get isLegacyApplyEnabled => settings.legacyApply;
  bool get cacheDynamicProviders => settings.cacheDynamicProviders;

  String get organization {
    if (settings.organization != null) {
      return settings.organization!;
    }
    throw Exception(
      "Missing organization name; for test mode, please call `pulumi.runtime.setMocks`",
    );
  }

  String get project => settings.project ?? "";
  String get stack => settings.stack ?? "";

  bool get hasMonitor => _monitor != null && settings.monitorAddr != null;
  bool get hasEngine => _engine != null && settings.engineAddr != null;

  ResourceMonitorClient? getMonitor() {
    if (_monitor == null && settings.monitorAddr != null) {
      final endpoint = _GrpcEndpoint.parse(settings.monitorAddr!);
      _monitorChannel = ClientChannel(
        endpoint.host,
        port: endpoint.port,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(
            codecs: const [GzipCodec(), IdentityCodec()],
          ),
          // settings:
          //     ConnectionSettings(maxReceiveMessageLength: maxRPCMessageSize),
        ),
      );
      _monitor = ResourceMonitorClient(_monitorChannel!);
    }
    return _monitor;
  }

  EngineClient? getEngine() {
    if (_engine == null && settings.engineAddr != null) {
      final endpoint = _GrpcEndpoint.parse(settings.engineAddr!);
      _engineChannel = ClientChannel(
        endpoint.host,
        port: endpoint.port,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(
            codecs: const [GzipCodec(), IdentityCodec()],
          ),
          // settings:
          //     ConnectionSettings(maxReceiveMessageLength: maxRPCMessageSize),
        ),
      );
      _engine = EngineClient(_engineChannel!);
    }
    return _engine;
  }

  Future<void> awaitFeatureSupport() async {
    final monitor = getMonitor();
    if (monitor != null) {
      supportsSecrets = await _monitorSupportsFeature(monitor, 'secrets');
      supportsResourceReferences = await _monitorSupportsFeature(
        monitor,
        'resourceReferences',
      );
      supportsOutputValues = await _monitorSupportsFeature(
        monitor,
        'outputValues',
      );
      supportsDeletedWith = await _monitorSupportsFeature(
        monitor,
        'deletedWith',
      );
      supportsAliasSpecs = await _monitorSupportsFeature(monitor, 'aliasSpecs');
      supportsTransforms = await _monitorSupportsFeature(monitor, 'transforms');
      supportsInvokeTransforms = await _monitorSupportsFeature(
        monitor,
        'invokeTransforms',
      );
    }
  }

  Future<bool> _monitorSupportsFeature(
    ResourceMonitorClient monitor,
    String feature,
  ) async {
    try {
      final response = await monitor.supportsFeature(
        SupportsFeatureRequest()..id = feature,
      );
      return response.hasSupport;
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unimplemented) {
        return false;
      }
      rethrow;
    }
  }

  void resetOptions({
    String? project,
    String? stack,
    int? parallel,
    String? engineAddr,
    String? monitorAddr,
    bool? preview,
    String? organization,
  }) {
    _monitor = null;
    _monitorChannel = null;
    _engine = null;
    _engineChannel = null;
    callbacks = null;
    settings = Settings(
      project: project ?? settings.project,
      stack: stack ?? settings.stack,
      parallel: parallel ?? settings.parallel,
      engineAddr: engineAddr ?? settings.engineAddr,
      monitorAddr: monitorAddr ?? settings.monitorAddr,
      dryRun: preview ?? settings.dryRun,
      organization: organization ?? settings.organization,
    );
    supportsSecrets = false;
    supportsResourceReferences = false;
    supportsOutputValues = false;
    supportsDeletedWith = false;
    supportsAliasSpecs = false;
    supportsTransforms = false;
    supportsInvokeTransforms = false;
    stackResource = null;
  }

  void setMockOptions(
    dynamic mockMonitor, {
    String? project,
    String? stack,
    bool? preview,
    String? organization,
  }) {
    resetOptions(
      project: project ?? this.project,
      stack: stack ?? this.stack,
      preview: preview ?? isDryRun,
      organization: organization ?? this.organization,
    );
    _monitor = mockMonitor;
  }

  Future<void> awaitStackRegistrations() async {
    if (callbacks != null) {
      await callbacks!.awaitStackRegistrations();
    }
  }

  ICallbackServer? getCallbacks() {
    if (callbacks != null) {
      return callbacks;
    }

    final monitorRef = getMonitor();
    if (monitorRef == null) {
      return null;
    }

    callbacks = CallbackServer(monitorRef);
    return callbacks;
  }

  SyncInvokes? tryGetSyncInvokes() {
    if (settings.syncDir != null) {
      final requestsFile = File(path.join(settings.syncDir!, 'invoke_req'));
      final responsesFile = File(path.join(settings.syncDir!, 'invoke_res'));
      return SyncInvokes(
        requests: requestsFile.openSync(mode: FileMode.writeOnly),
        responses: responsesFile.openSync(mode: FileMode.read),
      );
    }
    return null;
  }

  bool serialize() => settings.parallel == 1;

  void terminateRpcs() {
    disconnectSync();
  }

  Future<void> disconnect() async {
    await _waitForRPCs(disconnectFromServers: true);
  }

  Future<void> _waitForRPCs({bool disconnectFromServers = false}) async {
    // Implement RPC queue draining logic here
    if (disconnectFromServers) {
      disconnectSync();
    }
  }

  void disconnectSync() {
    callbacks?.shutdown();
    callbacks = null;

    unawaited(_monitorChannel?.shutdown());
    _monitor = null;
    _monitorChannel = null;

    unawaited(_engineChannel?.shutdown());
    _engine = null;
    _engineChannel = null;
  }

  void Function() rpcKeepAlive() {
    // Implement RPC keep-alive logic here
    return () {};
  }

  Future<void> setRootResource(ComponentResource res) async {
    await awaitFeatureSupport();

    final engineRef = getEngine();
    if (engineRef == null) {
      return;
    }

    final urn = await res.urn.getValue();
    final request = SetRootResourceRequest()..urn = urn;

    try {
      await engineRef.setRootResource(request);
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unimplemented) {
        // Back-compat case - ignore if the engine doesn't support this operation
        return;
      }
      rethrow;
    }
  }
}

class Settings {
  String? project;
  String? stack;
  int? parallel;
  String? engineAddr;
  String? monitorAddr;
  bool dryRun;
  bool testModeEnabled;
  bool queryMode;
  bool legacyApply;
  bool cacheDynamicProviders;
  String? organization;
  String? syncDir;

  Settings({
    this.project,
    this.stack,
    this.parallel,
    this.engineAddr,
    this.monitorAddr,
    this.dryRun = false,
    this.testModeEnabled = false,
    this.queryMode = false,
    this.legacyApply = false,
    this.cacheDynamicProviders = true,
    this.organization,
    this.syncDir,
  });
}

class SyncInvokes {
  final RandomAccessFile requests;
  final RandomAccessFile responses;

  SyncInvokes({required this.requests, required this.responses});
}

class _GrpcEndpoint {
  final String host;
  final int port;

  const _GrpcEndpoint({required this.host, required this.port});

  static _GrpcEndpoint parse(String address) {
    final normalizedAddress =
        address.startsWith('http://') || address.startsWith('https://')
        ? address
        : 'http://$address';

    final uri = Uri.parse(normalizedAddress);
    if (uri.host.isEmpty || uri.port == 0) {
      throw StateError('Invalid gRPC endpoint: $address');
    }
    return _GrpcEndpoint(host: uri.host, port: uri.port);
  }
}
