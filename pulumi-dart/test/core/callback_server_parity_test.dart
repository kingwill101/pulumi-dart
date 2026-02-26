import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/callback_server.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/resource_transformation.dart';
import 'package:pulumi/src/resource/resource_hooks.dart';
import 'package:pulumi/src/invoke.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

class _CancelledErrorLike {
  final String message;

  _CancelledErrorLike(this.message);

  @override
  String toString() => 'CancelledError("$message")';
}

class _CapturingResourceMonitorService extends ResourceMonitorServiceBase {
  final List<pulumirpc.RegisterResourceHookRequest> resourceHookRequests = [];
  final List<pulumirpc.RegisterErrorHookRequest> errorHookRequests = [];
  final List<Callback> stackTransformRequests = [];
  final List<Callback> stackInvokeTransformRequests = [];
  Duration stackTransformDelay = Duration.zero;
  Duration stackInvokeTransformDelay = Duration.zero;
  bool failStackTransformRegistration = false;
  bool failStackInvokeTransformRegistration = false;

  @override
  Future<pulumirpc.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    pulumirpc.SupportsFeatureRequest request,
  ) async {
    return pulumirpc.SupportsFeatureResponse()..hasSupport = true;
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    pulumirpc.ResourceInvokeRequest request,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    pulumirpc.ResourceCallRequest request,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<pulumirpc.ReadResourceResponse> readResource(
    ServiceCall call,
    pulumirpc.ReadResourceRequest request,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<pulumirpc.RegisterResourceResponse> registerResource(
    ServiceCall call,
    pulumirpc.RegisterResourceRequest request,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<Empty> registerResourceOutputs(
    ServiceCall call,
    pulumirpc.RegisterResourceOutputsRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerStackTransform(
    ServiceCall call,
    Callback request,
  ) async {
    if (stackTransformDelay > Duration.zero) {
      await Future.delayed(stackTransformDelay);
    }
    if (failStackTransformRegistration) {
      throw GrpcError.unknown('stack-transform-registration-failed');
    }
    stackTransformRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerStackInvokeTransform(
    ServiceCall call,
    Callback request,
  ) async {
    if (stackInvokeTransformDelay > Duration.zero) {
      await Future.delayed(stackInvokeTransformDelay);
    }
    if (failStackInvokeTransformRegistration) {
      throw GrpcError.unknown('stack-invoke-transform-registration-failed');
    }
    stackInvokeTransformRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerResourceHook(
    ServiceCall call,
    pulumirpc.RegisterResourceHookRequest request,
  ) async {
    resourceHookRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerErrorHook(
    ServiceCall call,
    pulumirpc.RegisterErrorHookRequest request,
  ) async {
    errorHookRequests.add(request);
    return Empty();
  }

  @override
  Future<pulumirpc.RegisterPackageResponse> registerPackage(
    ServiceCall call,
    pulumirpc.RegisterPackageRequest request,
  ) async {
    return pulumirpc.RegisterPackageResponse()..ref = 'pkg-ref';
  }

  @override
  Future<Empty> signalAndWaitForShutdown(
    ServiceCall call,
    Empty request,
  ) async {
    return Empty();
  }
}

ClientChannel _channelForTarget(String target) {
  final parts = target.split(':');
  return ClientChannel(
    parts[0],
    port: int.parse(parts[1]),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
}

void main() {
  group('callback server parity', () {
    late _CapturingResourceMonitorService monitorService;
    late Server monitorServer;
    late ClientChannel monitorChannel;
    late ResourceMonitorClient monitorClient;
    late CallbackServer callbackServer;

    setUp(() async {
      monitorService = _CapturingResourceMonitorService();
      monitorServer = Server.create(services: [monitorService]);
      await monitorServer.serve(address: InternetAddress.loopbackIPv4, port: 0);

      monitorChannel = ClientChannel(
        '127.0.0.1',
        port: monitorServer.port!,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      monitorClient = ResourceMonitorClient(monitorChannel);
      callbackServer = CallbackServer(monitorClient);
    });

    tearDown(() async {
      callbackServer.shutdown();
      await monitorChannel.shutdown();
      await monitorServer.shutdown();
    });

    test(
      'registerResourceHook deduplicates by name and forwards onDryRun',
      () async {
        Future<void> noop(ResourceHookArgs args) async {}

        final first = await callbackServer.registerResourceHook(
          ResourceHook('hookA', noop, onDryRun: true),
        );
        final second = await callbackServer.registerResourceHook(
          ResourceHook('hookA', noop, onDryRun: false),
        );

        expect(first, equals('hookA'));
        expect(second, equals('hookA'));
        expect(monitorService.resourceHookRequests, hasLength(1));
        expect(
          monitorService.resourceHookRequests.single.name,
          equals('hookA'),
        );
        expect(monitorService.resourceHookRequests.single.onDryRun, isTrue);
        expect(
          monitorService.resourceHookRequests.single.callback.target,
          isNotEmpty,
        );
        expect(
          monitorService.resourceHookRequests.single.callback.token,
          isNotEmpty,
        );
      },
    );

    test(
      'resource hook callback receives mapped args and success response',
      () async {
        ResourceHookArgs? captured;
        await callbackServer.registerResourceHook(
          ResourceHook('hookMapped', (args) async {
            captured = args;
          }),
        );
        final registration = monitorService.resourceHookRequests.single;

        final request = pulumirpc.ResourceHookRequest()
          ..urn = 'urn:pulumi:stack::project::pkg:index:Res::name'
          ..id = 'res-id'
          ..name = 'name'
          ..type = 'pkg:index:Res'
          ..newInputs = await StructConverter.toStruct({'enabled': true})
          ..oldOutputs = await StructConverter.toStruct({'count': 42});

        final callbackChannel = _channelForTarget(registration.callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = registration.callback.token
            ..request = request.writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final hookResponse = pulumirpc.ResourceHookResponse.fromBuffer(
          invokeResponse.response,
        );
        expect(hookResponse.error, isEmpty);

        expect(captured, isNotNull);
        expect(captured!.urn, equals(request.urn));
        expect(captured!.id, equals(request.id));
        expect(captured!.name, equals(request.name));
        expect(captured!.type, equals(request.type));
        expect(captured!.newInputs, equals({'enabled': true}));
        expect(captured!.oldOutputs, equals({'count': 42}));
        expect(captured!.oldInputs, isNull);
        expect(captured!.newOutputs, isNull);
      },
    );

    test(
      'resource hook callback returns error text when handler throws',
      () async {
        await callbackServer.registerResourceHook(
          ResourceHook('hookError', (args) {
            throw StateError('boom');
          }),
        );
        final registration = monitorService.resourceHookRequests.single;

        final callbackChannel = _channelForTarget(registration.callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);
        final invokeResponse = await callbacksClient.invoke(
          CallbackInvokeRequest()
            ..token = registration.callback.token
            ..request = pulumirpc.ResourceHookRequest(
              name: 'res',
              type: 'pkg:index:Res',
            ).writeToBuffer(),
        );
        await callbackChannel.shutdown();

        final hookResponse = pulumirpc.ResourceHookResponse.fromBuffer(
          invokeResponse.response,
        );
        expect(hookResponse.error, contains('boom'));
      },
    );

    test(
      'resource transform callback failure includes stack context in gRPC error',
      () async {
        Future<ResourceTransformResult?> transformException(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          throw StateError('beep');
        }

        final callback = await callbackServer.registerTransform(
          transformException,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..properties = await StructConverter.toStruct({'enabled': true});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('beep'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformException'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_parity_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'resource transform callback failure handles cancellation-like throwables with stack context',
      () async {
        Future<ResourceTransformResult?> transformCancelledError(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          await Future<void>.value();
          throw _CancelledErrorLike('noes');
        }

        final callback = await callbackServer.registerTransform(
          transformCancelledError,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..properties = await StructConverter.toStruct({'enabled': true});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('CancelledError("noes")'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformCancelledError'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_parity_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'invoke transform callback failure includes stack context in gRPC error',
      () async {
        Future<InvokeTransformResult?> transformException(
          InvokeTransformArgs args,
        ) async {
          throw StateError('noes');
        }

        final callback = await callbackServer.registerStackInvokeTransformAsync(
          transformException,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformInvokeRequest()
          ..token = 'pkg:index:getThing'
          ..args = await StructConverter.toStruct({'name': 'example'});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('noes'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformException'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_parity_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'invoke transform callback failure handles cancellation-like throwables with stack context',
      () async {
        Future<InvokeTransformResult?> transformCancelledError(
          InvokeTransformArgs args,
        ) async {
          await Future<void>.value();
          throw _CancelledErrorLike('noes');
        }

        final callback = await callbackServer.registerStackInvokeTransformAsync(
          transformCancelledError,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformInvokeRequest()
          ..token = 'pkg:index:getThing'
          ..args = await StructConverter.toStruct({'name': 'example'});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transform failed'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('CancelledError("noes")'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformCancelledError'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_parity_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test(
      'transform callback failure handles non-Exception throwables with stack context',
      () async {
        Future<ResourceTransformResult?> transformAssertion(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async {
          throw AssertionError('assert-noes');
        }

        final callback = await callbackServer.registerTransform(
          transformAssertion,
        );
        final callbackChannel = _channelForTarget(callback.target);
        final callbacksClient = CallbacksClient(callbackChannel);

        final request = TransformRequest()
          ..name = 'res'
          ..type = 'pkg:index:Res'
          ..custom = true
          ..properties = await StructConverter.toStruct({'enabled': true});

        await expectLater(
          callbacksClient.invoke(
            CallbackInvokeRequest()
              ..token = callback.token
              ..request = request.writeToBuffer(),
          ),
          throwsA(
            isA<GrpcError>()
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('assert-noes'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('transformAssertion'),
                )
                .having(
                  (error) => error.message ?? '',
                  'message',
                  contains('callback_server_parity_test.dart'),
                ),
          ),
        );

        await callbackChannel.shutdown();
      },
    );

    test('error hook callback returns retry and surfaces errors', () async {
      await callbackServer.registerErrorHook(
        ErrorHook('retry', (args) async => true),
      );
      final registration = monitorService.errorHookRequests.single;

      final callbackChannel = _channelForTarget(registration.callback.target);
      final callbacksClient = CallbacksClient(callbackChannel);
      final retryResponseRaw = await callbacksClient.invoke(
        CallbackInvokeRequest()
          ..token = registration.callback.token
          ..request = pulumirpc.ErrorHookRequest(
            name: 'res',
            type: 'pkg:index:Res',
            failedOperation: 'create',
          ).writeToBuffer(),
      );
      final retryResponse = pulumirpc.ErrorHookResponse.fromBuffer(
        retryResponseRaw.response,
      );
      expect(retryResponse.retry, isTrue);
      expect(retryResponse.error, isEmpty);

      await callbackServer.registerErrorHook(
        ErrorHook('fail', (args) {
          throw StateError('retry-failed');
        }),
      );
      final failureRegistration = monitorService.errorHookRequests.last;
      final failureResponseRaw = await callbacksClient.invoke(
        CallbackInvokeRequest()
          ..token = failureRegistration.callback.token
          ..request = pulumirpc.ErrorHookRequest(
            name: 'res',
            type: 'pkg:index:Res',
            failedOperation: 'update',
          ).writeToBuffer(),
      );
      await callbackChannel.shutdown();

      final failureResponse = pulumirpc.ErrorHookResponse.fromBuffer(
        failureResponseRaw.response,
      );
      expect(failureResponse.error, contains('retry-failed'));
    });

    test(
      'awaitStackRegistrations waits for pending stack transform registration',
      () async {
        monitorService.stackTransformDelay = const Duration(milliseconds: 120);

        callbackServer.registerStackTransform((
          args, [
          cancellationToken,
        ]) async {
          return null;
        });

        var completed = false;
        final waiter = callbackServer.awaitStackRegistrations().then((_) {
          completed = true;
        });

        await Future.delayed(const Duration(milliseconds: 20));
        expect(completed, isFalse);

        await waiter.timeout(const Duration(seconds: 2));
        expect(monitorService.stackTransformRequests, hasLength(1));
        expect(monitorService.stackTransformRequests.single.token, isNotEmpty);
        expect(monitorService.stackTransformRequests.single.target, isNotEmpty);
      },
    );

    test(
      'awaitStackRegistrations still completes when stack transform registration fails',
      () async {
        monitorService.failStackTransformRegistration = true;

        callbackServer.registerStackTransform((
          args, [
          cancellationToken,
        ]) async {
          return null;
        });

        await callbackServer.awaitStackRegistrations().timeout(
          const Duration(seconds: 2),
        );
      },
    );

    test(
      'awaitStackRegistrations waits for pending stack invoke transform registration',
      () async {
        monitorService.stackInvokeTransformDelay = const Duration(
          milliseconds: 120,
        );

        callbackServer.registerStackInvokeTransform((args) async {
          return null;
        });

        var completed = false;
        final waiter = callbackServer.awaitStackRegistrations().then((_) {
          completed = true;
        });

        await Future.delayed(const Duration(milliseconds: 20));
        expect(completed, isFalse);

        await waiter.timeout(const Duration(seconds: 2));
        expect(monitorService.stackInvokeTransformRequests, hasLength(1));
        expect(
          monitorService.stackInvokeTransformRequests.single.token,
          isNotEmpty,
        );
        expect(
          monitorService.stackInvokeTransformRequests.single.target,
          isNotEmpty,
        );
      },
    );

    test(
      'awaitStackRegistrations still completes when stack invoke transform registration fails',
      () async {
        monitorService.failStackInvokeTransformRegistration = true;

        callbackServer.registerStackInvokeTransform((args) async {
          return null;
        });

        await callbackServer.awaitStackRegistrations().timeout(
          const Duration(seconds: 2),
        );
      },
    );
  });
}
