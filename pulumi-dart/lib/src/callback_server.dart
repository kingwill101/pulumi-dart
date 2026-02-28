import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'log.dart' as log;
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pbgrpc.dart';
import 'package:uuid/uuid.dart';

import 'alias.dart';
import 'input.dart';
import 'invoke.dart';
import 'pulumirpc/pulumi/alias.pb.dart' as aliaspb;
import 'pulumirpc/pulumi/resource.pbgrpc.dart';
import 'pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'resource/component_resource.dart';
import 'resource/custom_resource.dart';
import 'resource/dependency_resource.dart';
import 'resource/provider_resource.dart';
import 'resource/resource_options.dart';
import 'resource/resource_transformation.dart';
import 'resource/resource_hooks.dart';
import 'struct_converter.dart';

/// Contract for callback server functionality used by the runtime.
abstract class ICallbackServer {
  /// Registers a resource transform callback and returns callback metadata.
  Future<Callback> registerTransform(ResourceTransform callback);

  /// Registers a resource lifecycle hook and returns the hook name.
  Future<String> registerResourceHook(ResourceHook hook);

  /// Registers an error hook and returns the hook name.
  Future<String> registerErrorHook(ErrorHook hook);

  /// Registers a stack-level resource transform.
  void registerStackTransform(ResourceTransform callback);

  /// Registers a stack-level invoke transform.
  void registerStackInvokeTransform(InvokeTransform callback);

  /// Async variant returning callback metadata.
  Future<Callback> registerStackInvokeTransformAsync(InvokeTransform callback);

  /// Shuts down the callback server.
  void shutdown();

  // Wait for any pending registerStackTransform calls to complete.
  /// Waits for pending stack transform/invoke registrations.
  Future<void> awaitStackRegistrations();
}

/// Maximum gRPC message size for callback payloads.
const int maxRPCMessageSize = 1024 * 1024 * 400; // 400 MB

/// Internal callback function signature.
typedef CallbackFunction = Future<GeneratedMessage> Function(Uint8List args);

/// {@template pulumi.callback_server.summary}
/// Local gRPC callback server that hosts transforms and hooks.
///
/// The server binds ephemeral callbacks to UUID tokens, then registers those
/// tokens with the monitor so the engine can invoke Dart callbacks remotely.
/// {@endtemplate}
///
class CallbackServer implements ICallbackServer {
  final Map<String, CallbackFunction> _callbacks = {};
  final Set<String> _registeredResourceHookNames = {};
  final Set<String> _registeredErrorHookNames = {};
  final ResourceMonitorClient _monitor;
  late final Server _server;
  late final Future<String> _target;
  int _pendingRegistrations = 0;
  final List<Completer<void>> _awaitQueue = [];

  CallbackServer(this._monitor) {
    _server = Server.create(
      services: [_CallbackService(this)],
      codecRegistry: CodecRegistry(
        codecs: const [GzipCodec(), IdentityCodec()],
      ),
    );

    _target = _initializeServer();
  }

  Future<String> _initializeServer() async {
    int port = 0;
    final address = InternetAddress.loopbackIPv4;
    await _server.serve(address: address, port: port);

    final channel = ClientChannel(
      '127.0.0.1',
      port: _server.port!,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    final client = CallbacksClient(channel);
    final target = "127.0.0.1:${_server.port}";
    while (true) {
      try {
        await client.invoke(CallbackInvokeRequest());
        return target;
      } catch (e) {
        if (e is GrpcError && e.code == StatusCode.unavailable) {
          await Future.delayed(const Duration(seconds: 1));
          continue;
        }
        if (e is GrpcError && e.message == 'callback not found: ') {
          return target;
        }
        rethrow;
      }
    }
  }

  @override
  Future<void> awaitStackRegistrations() {
    if (_pendingRegistrations == 0) {
      return Future.value();
    }
    final completer = Completer<void>();
    _awaitQueue.add(completer);
    return completer.future;
  }

  @override
  /// Stops accepting callbacks and shuts down the gRPC server.
  void shutdown() {
    _server.shutdown();
  }

  Future<CallbackInvokeResponse> _invoke(
    ServiceCall call,
    CallbackInvokeRequest request,
  ) async {
    final cb = _callbacks[request.token];
    if (cb == null) {
      throw GrpcError.invalidArgument('callback not found: ${request.token}');
    }

    try {
      final response = await cb(Uint8List.fromList(request.request));
      return CallbackInvokeResponse()..response = response.writeToBuffer();
    } catch (e, stackTrace) {
      throw GrpcError.unknown(_formatExceptionWithStackTrace(e, stackTrace));
    }
  }

  @override
  /// Registers an async resource transform callback.
  Future<Callback> registerTransform(ResourceTransform transform) async {
    Future<TransformResponse> cb(Uint8List bytes) async {
      final request = TransformRequest.fromBuffer(bytes);
      final options = _resourceOptionsFromTransformRequest(request);
      final args = ResourceTransformArgs(
        request.name,
        request.type,
        request.custom,
        request.hasProperties()
            ? Map<String, Object?>.from(
                StructConverter.fromStruct(request.properties),
              )
            : <String, Object?>{},
        options,
      );

      final result = await transform(args, CancellationToken());
      final response = TransformResponse();
      if (result == null) {
        if (request.hasProperties()) {
          response.properties = request.properties;
        }
        if (request.hasOptions()) {
          response.options = request.options;
        }
        return response;
      }

      response.properties = await StructConverter.toStruct(
        result.args.map((key, value) => MapEntry(key, value)),
      );
      response.options = await _transformResourceOptionsToProto(result.options);
      return response;
    }

    Future<TransformResponse> tryCb(Uint8List bytes) async {
      try {
        return await cb(bytes);
      } catch (e, stackTrace) {
        throw Exception(
          'transform failed: ${_formatExceptionWithStackTrace(e, stackTrace)}',
        );
      }
    }

    final uuid = const Uuid().v4();
    _callbacks[uuid] = tryCb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  @override
  /// Registers a resource lifecycle hook with the monitor.
  Future<String> registerResourceHook(ResourceHook hook) async {
    if (_registeredResourceHookNames.contains(hook.name)) {
      return hook.name;
    }

    final callback = await _registerResourceHookCallback(hook);
    await _monitor.registerResourceHook(
      RegisterResourceHookRequest()
        ..name = hook.name
        ..callback = callback
        ..onDryRun = hook.onDryRun,
    );

    _registeredResourceHookNames.add(hook.name);
    return hook.name;
  }

  @override
  /// Registers an error hook with the monitor.
  Future<String> registerErrorHook(ErrorHook hook) async {
    if (_registeredErrorHookNames.contains(hook.name)) {
      return hook.name;
    }

    final callback = await _registerErrorHookCallback(hook);
    await _monitor.registerErrorHook(
      RegisterErrorHookRequest()
        ..name = hook.name
        ..callback = callback,
    );

    _registeredErrorHookNames.add(hook.name);
    return hook.name;
  }

  Future<Callback> _registerResourceHookCallback(ResourceHook hook) async {
    Future<ResourceHookResponse> cb(Uint8List bytes) async {
      final request = pulumirpc.ResourceHookRequest.fromBuffer(bytes);
      final args = ResourceHookArgs(
        urn: request.urn,
        id: request.id,
        name: request.name,
        type: request.type,
        newInputs: request.hasNewInputs()
            ? StructConverter.fromStruct(request.newInputs)
            : null,
        oldInputs: request.hasOldInputs()
            ? StructConverter.fromStruct(request.oldInputs)
            : null,
        newOutputs: request.hasNewOutputs()
            ? StructConverter.fromStruct(request.newOutputs)
            : null,
        oldOutputs: request.hasOldOutputs()
            ? StructConverter.fromStruct(request.oldOutputs)
            : null,
      );

      try {
        await Future.sync(() => hook.handler(args));
        return pulumirpc.ResourceHookResponse();
      } catch (e, stackTrace) {
        return pulumirpc.ResourceHookResponse()
          ..error = _formatExceptionWithStackTrace(e, stackTrace);
      }
    }

    final uuid = const Uuid().v4();
    _callbacks[uuid] = cb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  Future<Callback> _registerErrorHookCallback(ErrorHook hook) async {
    Future<ErrorHookResponse> cb(Uint8List bytes) async {
      final request = pulumirpc.ErrorHookRequest.fromBuffer(bytes);
      final args = ErrorHookArgs(
        urn: request.urn,
        id: request.id,
        name: request.name,
        type: request.type,
        newInputs: request.hasNewInputs()
            ? StructConverter.fromStruct(request.newInputs)
            : null,
        oldInputs: request.hasOldInputs()
            ? StructConverter.fromStruct(request.oldInputs)
            : null,
        oldOutputs: request.hasOldOutputs()
            ? StructConverter.fromStruct(request.oldOutputs)
            : null,
        failedOperation: request.failedOperation,
        errors: List<String>.from(request.errors),
      );

      try {
        final retry = await Future.sync(() => hook.handler(args));
        return pulumirpc.ErrorHookResponse()..retry = retry;
      } catch (e, stackTrace) {
        return pulumirpc.ErrorHookResponse()
          ..error = _formatExceptionWithStackTrace(e, stackTrace);
      }
    }

    final uuid = const Uuid().v4();
    _callbacks[uuid] = cb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  @override
  /// Registers and publishes a stack-level resource transform.
  void registerStackTransform(ResourceTransform transform) {
    _pendingRegistrations++;

    registerTransform(transform)
        .then((req) {
          return _monitor.registerStackTransform(req);
        })
        .catchError((error) {
          log.error('failed to register stack transform: $error');
          return Empty();
        })
        .whenComplete(() {
          _pendingRegistrations--;
          if (_pendingRegistrations == 0) {
            final queue = List.from(_awaitQueue);
            _awaitQueue.clear();
            for (final completer in queue) {
              completer.complete();
            }
          }
        });
  }

  @override
  /// Registers an async stack-level invoke transform callback.
  Future<Callback> registerStackInvokeTransformAsync(
    InvokeTransform transform,
  ) async {
    Future<TransformInvokeResponse> cb(Uint8List bytes) async {
      final request = TransformInvokeRequest.fromBuffer(bytes);
      final invokeOptions = _invokeOptionsFromTransformRequest(request);
      final invokeArgs = request.hasArgs()
          ? Map<String, dynamic>.from(StructConverter.fromStruct(request.args))
          : <String, dynamic>{};
      final args = InvokeTransformArgs(
        token: request.token,
        args: _toInputs(invokeArgs),
        opts: invokeOptions,
      );

      final result = await transform(args);
      final response = TransformInvokeResponse();
      if (result == null) {
        if (request.hasArgs()) {
          response.args = request.args;
        }
        if (request.hasOptions()) {
          response.options = request.options;
        }
        return response;
      }

      response.args = await StructConverter.toStruct(
        result.args.map((key, value) => MapEntry(key, value)),
      );
      response.options = await _transformInvokeOptionsToProto(result.opts);
      return response;
    }

    Future<TransformInvokeResponse> tryCb(Uint8List bytes) async {
      try {
        return await cb(bytes);
      } catch (e, stackTrace) {
        throw Exception(
          'transform failed: ${_formatExceptionWithStackTrace(e, stackTrace)}',
        );
      }
    }

    final uuid = const Uuid().v4();
    _callbacks[uuid] = tryCb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  @override
  /// Registers and publishes a stack-level invoke transform.
  void registerStackInvokeTransform(InvokeTransform transform) {
    _pendingRegistrations++;

    registerStackInvokeTransformAsync(transform)
        .then((req) {
          return _monitor.registerStackInvokeTransform(req);
        })
        .catchError((error) {
          log.error('failed to register stack invoke transform: $error');
          return Empty();
        })
        .whenComplete(() {
          _pendingRegistrations--;
          if (_pendingRegistrations == 0) {
            final queue = List.from(_awaitQueue);
            _awaitQueue.clear();
            for (final completer in queue) {
              completer.complete();
            }
          }
        });
  }

  ResourceOptions _resourceOptionsFromTransformRequest(
    TransformRequest request,
  ) {
    final protoOpts = request.hasOptions()
        ? request.options
        : TransformResourceOptions();
    final aliases = _aliasesFromProto(protoOpts.aliases);
    final dependsOn = protoOpts.dependsOn
        .map((dep) => DependencyResource(dep))
        .toList();
    final provider = _providerFromReference(protoOpts.provider);
    final providers = protoOpts.providers.values
        .map(_providerFromReference)
        .whereType<ProviderResource>()
        .toList();
    final customTimeouts = protoOpts.hasCustomTimeouts()
        ? CustomTimeouts(
            create: protoOpts.customTimeouts.hasCreate_1()
                ? protoOpts.customTimeouts.create_1
                : null,
            update: protoOpts.customTimeouts.hasUpdate()
                ? protoOpts.customTimeouts.update
                : null,
            delete: protoOpts.customTimeouts.hasDelete()
                ? protoOpts.customTimeouts.delete
                : null,
          )
        : null;
    final deletedWith =
        protoOpts.hasDeletedWith() && protoOpts.deletedWith != ''
        ? DependencyResource(protoOpts.deletedWith)
        : null;
    final replacementTrigger = protoOpts.hasReplacementTrigger()
        ? StructConverter.fromValue(protoOpts.replacementTrigger)
        : null;

    if (request.custom) {
      return CustomResourceOptions(
        parent: request.hasParent() && request.parent != ''
            ? DependencyResource(request.parent)
            : null,
        dependsOn: dependsOn.isEmpty ? null : dependsOn,
        protect: protoOpts.hasProtect() ? protoOpts.protect : null,
        provider: provider,
        providers: providers,
        aliases: aliases.isEmpty ? null : aliases,
        version: protoOpts.hasVersion() ? protoOpts.version : null,
        pluginDownloadURL: protoOpts.hasPluginDownloadUrl()
            ? protoOpts.pluginDownloadUrl
            : null,
        customTimeouts: customTimeouts,
        deleteBeforeReplace: protoOpts.hasDeleteBeforeReplace()
            ? protoOpts.deleteBeforeReplace
            : null,
        retainOnDelete: protoOpts.hasRetainOnDelete()
            ? protoOpts.retainOnDelete
            : null,
        deletedWith: deletedWith,
        additionalSecretOutputs: protoOpts.additionalSecretOutputs.isEmpty
            ? null
            : List<String>.from(protoOpts.additionalSecretOutputs),
        ignoreChanges: protoOpts.ignoreChanges.isEmpty
            ? null
            : List<String>.from(protoOpts.ignoreChanges),
        replaceOnChanges: protoOpts.replaceOnChanges.isEmpty
            ? null
            : List<String>.from(protoOpts.replaceOnChanges),
        replacementTrigger: replacementTrigger,
      );
    }

    return ComponentResourceOptions(
      parent: request.hasParent() && request.parent != ''
          ? DependencyResource(request.parent)
          : null,
      dependsOn: dependsOn.isEmpty ? null : dependsOn,
      protect: protoOpts.hasProtect() ? protoOpts.protect : null,
      provider: provider,
      providers: providers,
      aliases: aliases.isEmpty ? null : aliases,
      version: protoOpts.hasVersion() ? protoOpts.version : null,
      pluginDownloadURL: protoOpts.hasPluginDownloadUrl()
          ? protoOpts.pluginDownloadUrl
          : null,
      customTimeouts: customTimeouts,
      deleteBeforeReplace: protoOpts.hasDeleteBeforeReplace()
          ? protoOpts.deleteBeforeReplace
          : null,
      retainOnDelete: protoOpts.hasRetainOnDelete()
          ? protoOpts.retainOnDelete
          : null,
      deletedWith: deletedWith,
      additionalSecretOutputs: protoOpts.additionalSecretOutputs.isEmpty
          ? null
          : List<String>.from(protoOpts.additionalSecretOutputs),
      ignoreChanges: protoOpts.ignoreChanges.isEmpty
          ? null
          : List<String>.from(protoOpts.ignoreChanges),
      replaceOnChanges: protoOpts.replaceOnChanges.isEmpty
          ? null
          : List<String>.from(protoOpts.replaceOnChanges),
      replacementTrigger: replacementTrigger,
    );
  }

  InvokeOptions _invokeOptionsFromTransformRequest(
    TransformInvokeRequest request,
  ) {
    final options = request.hasOptions()
        ? request.options
        : TransformInvokeOptions();
    return InvokeOptions(
      provider: _providerFromReference(options.provider),
      version: options.hasVersion() ? options.version : null,
      pluginDownloadURL: options.hasPluginDownloadUrl()
          ? options.pluginDownloadUrl
          : null,
    );
  }

  Future<TransformResourceOptions> _transformResourceOptionsToProto(
    ResourceOptions options,
  ) async {
    final proto = TransformResourceOptions();
    if (options.aliases != null) {
      for (final alias in options.aliases!) {
        proto.aliases.add(await alias.serializeAsync());
      }
    }
    if (options.customTimeouts != null) {
      proto.customTimeouts = RegisterResourceRequest_CustomTimeouts(
        create_1: options.customTimeouts!.create,
        update: options.customTimeouts!.update,
        delete: options.customTimeouts!.delete,
      );
    }
    if (options.deletedWith != null) {
      proto.deletedWith = await options.deletedWith!.urn.getValue();
    }
    if (options.dependsOn != null && options.dependsOn!.isNotEmpty) {
      for (final dep in options.dependsOn!) {
        proto.dependsOn.add(await dep.urn.getValue());
      }
    }
    if (options.ignoreChanges != null) {
      proto.ignoreChanges.addAll(options.ignoreChanges!);
    }
    if (options.replaceOnChanges != null) {
      proto.replaceOnChanges.addAll(options.replaceOnChanges!);
    }
    if (options.pluginDownloadURL != null) {
      proto.pluginDownloadUrl = options.pluginDownloadURL!;
    }
    if (options.protect != null) {
      proto.protect = options.protect!;
    }
    if (options.provider != null) {
      final providerRef = await ProviderResource.register(options.provider);
      if (providerRef != null) {
        proto.provider = providerRef;
      }
    }
    if (options.replacementTrigger != null) {
      proto.replacementTrigger = await StructConverter.toValue(
        options.replacementTrigger,
      );
    }
    if (options.retainOnDelete != null) {
      proto.retainOnDelete = options.retainOnDelete!;
    }
    if (options.version != null) {
      proto.version = options.version!;
    }
    if (options.deleteBeforeReplace != null) {
      proto.deleteBeforeReplace = options.deleteBeforeReplace!;
    }
    if (options.additionalSecretOutputs != null) {
      proto.additionalSecretOutputs.addAll(options.additionalSecretOutputs!);
    }
    for (final provider in options.providers) {
      final providerRef = await ProviderResource.register(provider);
      if (providerRef != null) {
        proto.providers[provider.package] = providerRef;
      }
    }

    return proto;
  }

  Future<TransformInvokeOptions> _transformInvokeOptionsToProto(
    InvokeOptions options,
  ) async {
    final proto = TransformInvokeOptions();
    if (options.pluginDownloadURL != null) {
      proto.pluginDownloadUrl = options.pluginDownloadURL!;
    }
    if (options.provider != null) {
      final providerRef = await ProviderResource.register(options.provider);
      if (providerRef != null) {
        proto.provider = providerRef;
      }
    }
    if (options.version != null) {
      proto.version = options.version!;
    }
    return proto;
  }

  List<Alias> _aliasesFromProto(List<aliaspb.Alias> aliases) {
    final result = <Alias>[];
    for (final alias in aliases) {
      if (alias.hasUrn()) {
        result.add(Alias(urn: alias.urn));
        continue;
      }
      if (alias.hasSpec()) {
        final spec = alias.spec;
        result.add(
          Alias(
            name: spec.hasName() && spec.name != ''
                ? Input.fromValue(spec.name)
                : null,
            type: spec.hasType() && spec.type != ''
                ? Input.fromValue(spec.type)
                : null,
            stack: spec.hasStack() && spec.stack != ''
                ? Input.fromValue(spec.stack)
                : null,
            project: spec.hasProject() && spec.project != ''
                ? Input.fromValue(spec.project)
                : null,
            parentUrn: spec.hasParentUrn() && spec.parentUrn != ''
                ? Input.fromValue(spec.parentUrn)
                : null,
            noParent: spec.hasNoParent() && spec.noParent,
          ),
        );
      }
    }
    return result;
  }

  ProviderResource? _providerFromReference(String reference) {
    if (reference.isEmpty) {
      return null;
    }
    final separator = reference.lastIndexOf('::');
    final urn = separator == -1 ? reference : reference.substring(0, separator);
    final id = separator == -1 ? null : reference.substring(separator + 2);
    final urnParts = urn.split('::');
    if (urnParts.length < 3 || !urnParts[2].startsWith('pulumi:providers:')) {
      return null;
    }
    final package = urnParts[2].substring('pulumi:providers:'.length);
    return ProviderResource.reference(package, urn, id: id);
  }

  Inputs _toInputs(Map<String, dynamic> args) {
    final result = <String, Input<dynamic>>{};
    for (final entry in args.entries) {
      result[entry.key] = Input.fromValue(entry.value);
    }
    return result;
  }
}

String _formatExceptionWithStackTrace(Object error, StackTrace stackTrace) {
  final trace = stackTrace.toString().trimRight();
  if (trace.isEmpty) {
    return error.toString();
  }
  return '${error.toString()}\n$trace';
}

/// gRPC service that dispatches callback invocations to [CallbackServer].
class _CallbackService extends CallbacksServiceBase {
  final CallbackServer _server;

  _CallbackService(this._server);

  @override
  Future<CallbackInvokeResponse> invoke(
    ServiceCall call,
    CallbackInvokeRequest request,
  ) {
    return _server._invoke(call, request);
  }
}
