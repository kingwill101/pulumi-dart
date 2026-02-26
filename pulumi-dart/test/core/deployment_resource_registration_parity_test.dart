import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart'
    show
        CallResponse,
        InvokeResponse,
        ReadResourceRequest,
        ReadResourceResponse,
        RegisterPackageRequest,
        RegisterPackageResponse,
        RegisterResourceOutputsRequest,
        RegisterResourceRequest,
        RegisterResourceResponse,
        ResourceCallRequest,
        ResourceInvokeRequest,
        ResourceMonitorClient;
import 'package:pulumi/src/resource/resource.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';

class _FakeMonitor implements monitorpkg.Monitor {
  RegisterResourceRequest? capturedRegisterResourceRequest;
  RegisterPackageRequest? capturedRegisterPackageRequest;
  Object? registerPackageError;
  String registerPackageRef = 'pkg-ref-default';

  @override
  ResourceMonitorClient get client =>
      throw StateError('client is not used in this parity test harness');

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) async {
    return monitorpkg.SupportsFeatureResponse(true);
  }

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    throw GrpcError.unimplemented('invoke not used in this test');
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    throw GrpcError.unimplemented('call not used in this test');
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    capturedRegisterPackageRequest = request;
    if (registerPackageError != null) {
      throw registerPackageError!;
    }
    return RegisterPackageResponse(ref: registerPackageRef);
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('readResource not used in this test');
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    capturedRegisterResourceRequest = request;
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id'
      ..object = Struct();
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    return Empty();
  }
}

class _PackageBackedResource extends CustomResource {
  _PackageBackedResource(
    String name, {
    required deployment_models.RegisterPackageRequest registerPackageRequest,
    CustomResourceOptions? options,
  }) : super(
         'pkg:index:Thing',
         name,
         const {},
         options ?? CustomResourceOptions(),
         registerPackageRequest: registerPackageRequest,
       );
}

void main() {
  group('deployment resource registration parity', () {
    late _FakeMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _FakeMonitor();
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'forwards registerPackage packageRef and ignoreChanges to monitor',
      () async {
        monitor.registerPackageRef = 'pkg-ref-123';

        _PackageBackedResource(
          'thing',
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-pkg',
            version: '1.0.0',
          ),
          options: CustomResourceOptions(ignoreChanges: ['a', 'b.c']),
        );

        await deployment.registerOutputs();

        expect(monitor.capturedRegisterPackageRequest, isNotNull);
        expect(monitor.capturedRegisterPackageRequest!.name, 'pulumi-pkg');

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.packageRef, 'pkg-ref-123');
        expect(request.ignoreChanges, orderedEquals(['a', 'b.c']));
      },
    );

    test('surfaces registerPackage failure before resource RPC', () async {
      monitor.registerPackageError = StateError('register package failed');

      _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
      );

      await expectLater(deployment.registerOutputs(), throwsStateError);
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test('rejects invalid ignoreChanges paths before resource RPC', () async {
      _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['valid', '  ']),
      );

      await expectLater(
        deployment.registerOutputs(),
        throwsA(isA<ArgumentError>()),
      );
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });
  });
}
