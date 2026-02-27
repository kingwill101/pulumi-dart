import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/pulumi.dart';
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
import '../mocks/mocks.mocks.dart';

class _CountingMonitor implements monitorpkg.Monitor {
  int registerResourceOutputsCalls = 0;

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
    return RegisterPackageResponse();
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
    throw GrpcError.unimplemented('registerResource not used in this test');
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    registerResourceOutputsCalls++;
    return Empty();
  }
}

void main() {
  group('deployment instance parity', () {
    late _CountingMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _CountingMonitor();
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.clearInstance();
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('DeploymentImpl.instance throws before initialization', () {
      expect(() => DeploymentImpl.instance, throwsStateError);
    });

    test('DeploymentImpl.setInstance and clearInstance control singleton', () {
      DeploymentImpl.setInstance(deployment);
      expect(identical(DeploymentImpl.instance, deployment), isTrue);

      DeploymentImpl.clearInstance();
      expect(() => DeploymentImpl.instance, throwsStateError);
    });

    test('createForTesting exposes configured deployment metadata', () {
      expect(deployment.organizationName, 'org');
      expect(deployment.projectName, 'project');
      expect(deployment.stackName, 'stack');
      expect(deployment.isDryRun, isFalse);
      expect(deployment.logger, isA<EngineLogger>());
    });

    test('stack getter and setter enforce single assignment', () {
      final stack = MockStack();

      expect(() => deployment.stack, throwsStateError);
      deployment.setStack(stack);
      expect(identical(deployment.stack, stack), isTrue);
      expect(() => deployment.setStack(MockStack()), throwsStateError);
    });

    test('registerOutputs waits pending resource operations', () async {
      var operationCompleted = false;
      deployment.registerResourceOperation(
        Future<void>(() {
          operationCompleted = true;
        }),
      );

      await deployment.registerOutputs();
      expect(operationCompleted, isTrue);
      expect(monitor.registerResourceOutputsCalls, 0);
    });

    test('registerOutputs no-ops when stack outputs are empty', () async {
      deployment.setStack(MockStack());

      await deployment.registerOutputs();
      expect(monitor.registerResourceOutputsCalls, 0);
    });

    test('collapseAliasToUrn rejects non-Alias values', () {
      expect(
        () => deployment.collapseAliasToUrn(
          'not-an-alias',
          'name',
          'pkg:index:Type',
          null,
        ),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
