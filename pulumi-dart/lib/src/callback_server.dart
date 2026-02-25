import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'log.dart' as log;
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pbgrpc.dart';
import 'package:uuid/uuid.dart';

import 'invoke.dart';
import 'pulumirpc/pulumi/resource.pbgrpc.dart';
import 'pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'resource/resource_transformation.dart';
import 'resource/resource_hooks.dart';
import 'struct_converter.dart';

abstract class ICallbackServer {
  Future<Callback> registerTransform(ResourceTransform callback);
  Future<String> registerResourceHook(ResourceHook hook);
  Future<String> registerErrorHook(ErrorHook hook);
  void registerStackTransform(ResourceTransform callback);
  void registerStackInvokeTransform(InvokeTransform callback);
  Future<Callback> registerStackInvokeTransformAsync(InvokeTransform callback);
  void shutdown();

  // Wait for any pending registerStackTransform calls to complete.
  Future<void> awaitStackRegistrations();
}

const int maxRPCMessageSize = 1024 * 1024 * 400; // 400 MB

typedef CallbackFunction = Future<GeneratedMessage> Function(Uint8List args);

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
    } catch (e) {
      throw GrpcError.unknown(e.toString());
    }
  }

  @override
  Future<Callback> registerTransform(ResourceTransform transform) async {
    final cb = (Uint8List bytes) async {
      final request = TransformRequest.fromBuffer(bytes);
      // TODO: Implement the rest of the transform logic
      // This involves translating a significant amount of business logic
      throw UnimplementedError('Transform logic not yet implemented');
    };

    final uuid = const Uuid().v4();
    _callbacks[uuid] = cb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  @override
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
    final cb = (Uint8List bytes) async {
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
      } catch (e) {
        return pulumirpc.ResourceHookResponse()..error = e.toString();
      }
    };

    final uuid = const Uuid().v4();
    _callbacks[uuid] = cb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  Future<Callback> _registerErrorHookCallback(ErrorHook hook) async {
    final cb = (Uint8List bytes) async {
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
      } catch (e) {
        return pulumirpc.ErrorHookResponse()..error = e.toString();
      }
    };

    final uuid = const Uuid().v4();
    _callbacks[uuid] = cb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  @override
  void registerStackTransform(ResourceTransform transform) {
    _pendingRegistrations++;

    registerTransform(transform)
        .then((req) {
          return _monitor.registerStackTransform(req);
        })
        .catchError((error) {
          log.error('failed to register stack transform: $error');
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
  Future<Callback> registerStackInvokeTransformAsync(
    InvokeTransform transform,
  ) async {
    final cb = (Uint8List bytes) async {
      final request = TransformInvokeRequest.fromBuffer(bytes);
      // TODO: Implement the rest of the invoke transform logic
      throw UnimplementedError('Invoke transform logic not yet implemented');
    };

    final uuid = const Uuid().v4();
    _callbacks[uuid] = cb;

    return Callback()
      ..token = uuid
      ..target = await _target;
  }

  @override
  void registerStackInvokeTransform(InvokeTransform transform) {
    _pendingRegistrations++;

    registerStackInvokeTransformAsync(transform)
        .then((req) {
          return _monitor.registerStackInvokeTransform(req);
        })
        .catchError((error) {
          log.error('failed to register stack invoke transform: $error');
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
}

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
