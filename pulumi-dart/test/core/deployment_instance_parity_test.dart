import 'package:grpc/grpc.dart';
import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deployment/deployment.dart' as deployment_src;
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
  RegisterResourceOutputsRequest? lastRegisterResourceOutputsRequest;
  Object? registerResourceOutputsError;

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
    lastRegisterResourceOutputsRequest = request;
    if (registerResourceOutputsError != null) {
      throw registerResourceOutputsError!;
    }
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
      DeploymentImpl.resetEnvironmentProviderForTesting();
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
      DeploymentImpl.resetEnvironmentProviderForTesting();
    });

    test('DeploymentImpl.instance throws before initialization', () {
      expect(() => DeploymentImpl.instance, throwsStateError);
    });

    test('Deployment.instance proxies to DeploymentImpl.instance', () {
      DeploymentImpl.setTestInstance(deployment);
      expect(identical(Deployment.instance, deployment), isTrue);
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

    test('swallowedExceptions exposes an immutable view', () {
      expect(deployment.swallowedExceptions, isEmpty);
      expect(
        () => deployment.swallowedExceptions.add(Exception('boom')),
        throwsUnsupportedError,
      );
    });

    test('getCurrentDeployment resolves current singleton deployment', () {
      DeploymentImpl.setTestInstance(deployment);
      expect(
        identical(deployment_src.getCurrentDeployment(), deployment),
        isTrue,
      );
    });

    test(
      'DeploymentImpl.run throws when required Pulumi env vars are missing',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(() => const {});

        await expectLater(
          DeploymentImpl.run(() {}),
          throwsA(isA<StateError>()),
        );
      },
    );

    test(
      'Deployment.run and Deployment.runOrThrow surface missing runtime env parity',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(() => const {});

        await expectLater(Deployment.run(() {}), throwsA(isA<StateError>()));
        await expectLater(
          Deployment.runOrThrow(() {}),
          throwsA(isA<StateError>()),
        );
      },
    );

    test(
      'DeploymentImpl.run succeeds with host:port monitor and engine envs',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': '127.0.0.1:65535',
            'PULUMI_ENGINE': '127.0.0.1:65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );
        expect(await DeploymentImpl.run(() {}), equals(0));
      },
    );

    test(
      'DeploymentImpl.run succeeds with http:// monitor and engine envs',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': 'http://127.0.0.1:65535',
            'PULUMI_ENGINE': 'http://127.0.0.1:65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'true',
          },
        );
        expect(await DeploymentImpl.run(() {}), equals(0));
      },
    );

    test(
      'DeploymentImpl.run returns non-zero when program throws and runOrThrow surfaces it',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': '127.0.0.1:65535',
            'PULUMI_ENGINE': '127.0.0.1:65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );

        expect(
          await DeploymentImpl.run(() {
            throw StateError('probe failure');
          }),
          equals(1),
        );

        await expectLater(
          Deployment.runOrThrow(() {
            throw StateError('probe failure');
          }),
          throwsA(isA<StateError>()),
        );
      },
    );

    test(
      'Deployment.runOrThrow throws when DeploymentImpl.run returns non-zero',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': '127.0.0.1:65535',
            'PULUMI_ENGINE': '127.0.0.1:65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );

        await expectLater(
          Deployment.runOrThrow(() {
            throw StateError('probe failure');
          }),
          throwsA(
            isA<StateError>().having(
              (error) => error.message,
              'message',
              contains('Pulumi program failed with exit code 1'),
            ),
          ),
        );
      },
    );

    test(
      'DeploymentImpl.run rejects invalid monitor endpoint address',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': ':65535',
            'PULUMI_ENGINE': '127.0.0.1:65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );

        await expectLater(
          DeploymentImpl.run(() {}),
          throwsA(isA<StateError>()),
        );
        await expectLater(
          DeploymentImpl.run(() {}),
          throwsA(
            isA<StateError>().having(
              (error) => error.message,
              'message',
              contains('Invalid gRPC endpoint: :65535'),
            ),
          ),
        );
      },
    );

    test(
      'DeploymentImpl.run rejects invalid engine endpoint address',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': '127.0.0.1:65535',
            'PULUMI_ENGINE': ':65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );

        await expectLater(
          DeploymentImpl.run(() {}),
          throwsA(
            isA<StateError>().having(
              (error) => error.message,
              'message',
              contains('Invalid gRPC endpoint: :65534'),
            ),
          ),
        );
      },
    );

    test(
      'DeploymentImpl.run still attempts registerOutputs after callback throws',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': '127.0.0.1:65535',
            'PULUMI_ENGINE': '127.0.0.1:65534',
            'PULUMI_PROJECT': 'project',
            'PULUMI_STACK': 'stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );

        final exitCode = await DeploymentImpl.run(() {
          throw StateError('probe failure');
        });

        expect(exitCode, equals(1));
      },
    );

    test(
      'DeploymentImpl.run succeeds when explicitly passing project/stack and dryRun override',
      () async {
        DeploymentImpl.setEnvironmentProviderForTesting(
          () => const {
            'PULUMI_MONITOR': '127.0.0.1:65535',
            'PULUMI_ENGINE': '127.0.0.1:65534',
            'PULUMI_PROJECT': 'ignored-project',
            'PULUMI_STACK': 'ignored-stack',
            'PULUMI_DRY_RUN': 'false',
          },
        );

        final exitCode = await DeploymentImpl.run(
          () {},
          projectName: 'override-project',
          stackName: 'override-stack',
          isDryRun: true,
        );
        expect(exitCode, equals(0));

        await expectLater(
          Deployment.runOrThrow(
            () {
              throw StateError('probe failure');
            },
            projectName: 'override-project',
            stackName: 'override-stack',
            isDryRun: true,
          ),
          throwsA(isA<StateError>()),
        );

        expect(
          await DeploymentImpl.run(
            () {},
            projectName: 'override-project',
            stackName: 'override-stack',
            isDryRun: true,
          ),
          equals(0),
        );
      },
    );

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

    test(
      'registerResourceOutputs serializes known values and skips unknown non-stack outputs',
      () async {
        final stack = MockStack();
        when(stack.serializeOutputValue(any)).thenAnswer((invocation) async {
          final data = invocation.positionalArguments[0] as OutputData<dynamic>;
          return Value()..stringValue = data.value?.toString() ?? '';
        });
        deployment.setStack(stack);

        final resource = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Thing::thing',
        );
        final outputs = Output.create(<String, dynamic>{
          'known': Output.create('value'),
          'unknown': Output.createUnknown<String>(),
        });

        await deployment.registerResourceOutputs(resource, outputs);

        expect(monitor.registerResourceOutputsCalls, 1);
        final request = monitor.lastRegisterResourceOutputsRequest;
        expect(request, isNotNull);
        expect(request!.urn, await resource.urn.getValue());
        expect(request.outputs.fields.containsKey('known'), isTrue);
        expect(request.outputs.fields['known']!.stringValue, 'value');
        expect(request.outputs.fields.containsKey('unknown'), isFalse);
      },
    );

    test(
      'registerResourceOutputs logs unknown stack outputs and still registers request',
      () async {
        final stack = MockStack();
        when(stack.serializeOutputValue(any)).thenAnswer((invocation) async {
          final data = invocation.positionalArguments[0] as OutputData<dynamic>;
          return Value()..stringValue = data.value?.toString() ?? '';
        });
        deployment.setStack(stack);

        final stackResource = DependencyResource(
          'urn:pulumi:stack::project::pulumi:pulumi:Stack::project-stack',
        );
        final outputs = Output.create(<String, dynamic>{
          'pending': Output.createUnknown<String>(),
        });

        await deployment.registerResourceOutputs(stackResource, outputs);

        expect(monitor.registerResourceOutputsCalls, 1);
        final request = monitor.lastRegisterResourceOutputsRequest!;
        expect(request.urn, await stackResource.urn.getValue());
        expect(request.outputs.fields, isEmpty);
      },
    );

    test(
      'registerResourceOutputs rethrows monitor registration failures',
      () async {
        final stack = MockStack();
        when(stack.serializeOutputValue(any)).thenAnswer((invocation) async {
          final data = invocation.positionalArguments[0] as OutputData<dynamic>;
          return Value()..stringValue = data.value?.toString() ?? '';
        });
        deployment.setStack(stack);
        monitor.registerResourceOutputsError = StateError(
          'register outputs failed',
        );

        final resource = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Thing::thing',
        );
        final outputs = Output.create(<String, dynamic>{
          'known': Output.create('value'),
        });

        await expectLater(
          deployment.registerResourceOutputs(resource, outputs),
          throwsStateError,
        );
      },
    );

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
