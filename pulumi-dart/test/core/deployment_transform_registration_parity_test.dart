import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart' as callbackpb;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';

class _TransformRegistrationMonitorService extends ResourceMonitorServiceBase {
  final Map<String, bool> featureSupport;
  final List<String> supportsFeatureRequests = [];
  final List<callbackpb.Callback> stackTransformRequests = [];
  final List<callbackpb.Callback> stackInvokeTransformRequests = [];
  final List<pulumirpc.RegisterResourceRequest> registerResourceRequests = [];
  final List<pulumirpc.RegisterResourceHookRequest> resourceHookRequests = [];
  final List<pulumirpc.RegisterErrorHookRequest> errorHookRequests = [];

  _TransformRegistrationMonitorService({required this.featureSupport});

  @override
  Future<pulumirpc.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    pulumirpc.SupportsFeatureRequest request,
  ) async {
    supportsFeatureRequests.add(request.id);
    return pulumirpc.SupportsFeatureResponse()
      ..hasSupport = (featureSupport[request.id] ?? false);
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    pulumirpc.ResourceInvokeRequest request,
  ) async {
    throw GrpcError.unimplemented('invoke not used');
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    pulumirpc.ResourceCallRequest request,
  ) async {
    throw GrpcError.unimplemented('call not used');
  }

  @override
  Future<pulumirpc.ReadResourceResponse> readResource(
    ServiceCall call,
    pulumirpc.ReadResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('readResource not used');
  }

  @override
  Future<pulumirpc.RegisterResourceResponse> registerResource(
    ServiceCall call,
    pulumirpc.RegisterResourceRequest request,
  ) async {
    registerResourceRequests.add(request);
    return pulumirpc.RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id'
      ..object = Struct();
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
    callbackpb.Callback request,
  ) async {
    stackTransformRequests.add(request);
    return Empty();
  }

  @override
  Future<Empty> registerStackInvokeTransform(
    ServiceCall call,
    callbackpb.Callback request,
  ) async {
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
    return pulumirpc.RegisterPackageResponse();
  }

  @override
  Future<Empty> signalAndWaitForShutdown(
    ServiceCall call,
    Empty request,
  ) async {
    return Empty();
  }
}

class _HookAndTransformResource extends CustomResource {
  _HookAndTransformResource(String name, CustomResourceOptions options)
    : super('pkg:index:HookAndTransform', name, const {}, options);
}

void main() {
  group('deployment transform registration parity', () {
    late _TransformRegistrationMonitorService monitorService;
    late Server monitorServer;
    late ClientChannel channel;
    late monitorpkg.Monitor monitor;
    late DeploymentImpl deployment;

    setUp(() async {
      monitorService = _TransformRegistrationMonitorService(
        featureSupport: {'transforms': true, 'invokeTransforms': true},
      );
      monitorServer = Server.create(services: [monitorService]);
      await monitorServer.serve(address: InternetAddress.loopbackIPv4, port: 0);

      channel = ClientChannel(
        '127.0.0.1',
        port: monitorServer.port!,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      monitor = monitorpkg.Monitor(channel);

      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: true,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() async {
      DeploymentImpl.clearInstance();
      await channel.shutdown();
      await monitorServer.shutdown();
    });

    test(
      'registerResourceTransform registers callback and caches feature check',
      () async {
        Future<Null> transform(
          ResourceTransformArgs args, [
          CancellationToken? cancellationToken,
        ]) async => null;

        await deployment.registerResourceTransform(transform);
        await deployment.registerResourceTransform(transform);

        expect(
          monitorService.supportsFeatureRequests
              .where((v) => v == 'transforms')
              .length,
          1,
        );
        expect(monitorService.stackTransformRequests, hasLength(2));
        expect(monitorService.stackTransformRequests[0].target, isNotEmpty);
        expect(monitorService.stackTransformRequests[0].token, isNotEmpty);
      },
    );

    test(
      'registerInvokeTransform registers callback and caches feature check',
      () async {
        Future<Null> transform(InvokeTransformArgs args) async => null;

        await deployment.registerInvokeTransform(transform);
        await deployment.registerInvokeTransform(transform);

        expect(
          monitorService.supportsFeatureRequests
              .where((v) => v == 'invokeTransforms')
              .length,
          1,
        );
        expect(monitorService.stackInvokeTransformRequests, hasLength(2));
        expect(
          monitorService.stackInvokeTransformRequests[0].target,
          isNotEmpty,
        );
        expect(
          monitorService.stackInvokeTransformRequests[0].token,
          isNotEmpty,
        );
      },
    );

    test(
      'registerResourceTransform fails with parity message when transforms are unsupported',
      () async {
        monitorService.featureSupport['transforms'] = false;

        await expectLater(
          deployment.registerResourceTransform((
            args, [
            cancellationToken,
          ]) async {
            return null;
          }),
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              'message',
              contains('does not support transforms'),
            ),
          ),
        );
      },
    );

    test(
      'registerInvokeTransform fails with parity message when invoke transforms are unsupported',
      () async {
        monitorService.featureSupport['invokeTransforms'] = false;

        await expectLater(
          deployment.registerInvokeTransform((args) async => null),
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              'message',
              contains('does not support invoke transforms'),
            ),
          ),
        );
      },
    );

    test(
      'resource registration wires hook callbacks and transform callbacks',
      () async {
        _HookAndTransformResource(
          'hooked',
          CustomResourceOptions(
            hooks: ResourceHookBinding(
              beforeCreate: [ResourceHook('before-create', (args) async {})],
              onError: [ErrorHook('on-error', (args) async => false)],
            ),
            resourceTransforms: [(args, [cancellationToken]) async => null],
          ),
        );

        await deployment.registerOutputs();

        expect(monitorService.registerResourceRequests, hasLength(1));
        final request = monitorService.registerResourceRequests.single;
        expect(request.transforms, hasLength(1));
        expect(request.hooks.beforeCreate, equals(['before-create']));
        expect(request.hooks.afterCreate, isEmpty);
        expect(request.hooks.beforeUpdate, isEmpty);
        expect(request.hooks.afterUpdate, isEmpty);
        expect(request.hooks.beforeDelete, isEmpty);
        expect(request.hooks.afterDelete, isEmpty);
        expect(request.hooks.onError, equals(['on-error']));
        expect(monitorService.resourceHookRequests, hasLength(1));
        expect(
          monitorService.resourceHookRequests.single.name,
          'before-create',
        );
        expect(monitorService.errorHookRequests, hasLength(1));
        expect(monitorService.errorHookRequests.single.name, 'on-error');
      },
    );
  });
}
