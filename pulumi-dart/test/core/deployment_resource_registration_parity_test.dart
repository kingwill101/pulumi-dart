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
  final List<RegisterResourceRequest> capturedRegisterResourceRequests = [];
  RegisterPackageRequest? capturedRegisterPackageRequest;
  Object? registerPackageError;
  Object? registerResourceError;
  String registerPackageRef = 'pkg-ref-default';
  bool supportsFeatureValue = true;
  Object? supportsFeatureError;
  final List<String> requestedFeatures = [];

  @override
  ResourceMonitorClient get client =>
      throw StateError('client is not used in this parity test harness');

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) async {
    requestedFeatures.add(request.id);
    if (supportsFeatureError != null) {
      throw supportsFeatureError!;
    }
    return monitorpkg.SupportsFeatureResponse(supportsFeatureValue);
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
    capturedRegisterResourceRequests.add(request);
    if (registerResourceError != null) {
      throw registerResourceError!;
    }
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

class _RichOptionsResource extends CustomResource {
  _RichOptionsResource(
    String name, {
    required CustomResourceOptions options,
    required Resource dependencyForProperty,
  }) : super('pkg:index:RichOptions', name, {
         'plain': Input.fromValue('value'),
         'withDep': Input.fromValue(dependencyForProperty),
       }, options);
}

class _TransformEnabledResource extends CustomResource {
  _TransformEnabledResource(
    String name, {
    required CustomResourceOptions options,
  }) : super('pkg:index:TransformEnabled', name, const {}, options);
}

class _ComponentWithProvider extends ComponentResource {
  _ComponentWithProvider(String name, ComponentResourceOptions options)
    : super('pkg:index:ComponentWithProvider', name, const {}, options);
}

class _DependsOnLeafResource extends CustomResource {
  _DependsOnLeafResource(String name, CustomResourceOptions options)
    : super('pkg:index:DependsOnLeaf', name, const {}, options);
}

class _DependsOnNestedComponent extends ComponentResource {
  _DependsOnNestedComponent(
    String name,
    int depth, {
    ComponentResourceOptions? options,
  }) : super(
         'pkg:index:DependsOnComponent',
         '$name-$depth',
         {'depth': Input.fromValue(depth)},
         options ?? ComponentResourceOptions(),
       ) {
    if (depth > 0) {
      _DependsOnNestedComponent(
        name,
        depth - 1,
        options: ComponentResourceOptions(parent: this),
      );
    } else {
      _DependsOnLeafResource('$name-leaf', CustomResourceOptions(parent: this));
    }
  }
}

class _DependsOnTargetResource extends CustomResource {
  _DependsOnTargetResource(String name, CustomResourceOptions options)
    : super('pkg:index:DependsOnTarget', name, const {}, options);
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

    test(
      'resource registration failures fail pending outputs before rethrow',
      () async {
        monitor.registerResourceError = Exception('register resource failed');

        final resource = _PackageBackedResource(
          'thing',
          registerPackageRequest: deployment_models.RegisterPackageRequest(
            name: 'pulumi-pkg',
            version: '1.0.0',
          ),
        );
        final pending = resource.registerOutput<String>('status');

        await expectLater(
          deployment.registerOutputs(),
          throwsA(isA<Exception>()),
        );
        await expectLater(pending.getData(), throwsA(isA<Exception>()));
      },
    );

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

    test(
      'maps rich resource options and dependencies into register request',
      () async {
        final parent = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Parent::parent',
        );
        final depA = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Dep::a',
        );
        final depB = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Dep::b',
        );
        final deletedWith = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:DeletedWith::d',
        );

        final providerPrimary = ProviderResource.reference(
          'pkg',
          'urn:pulumi:stack::project::pulumi:providers:pkg::primary',
          id: 'primary-id',
        );
        final providerSecondary = ProviderResource.reference(
          'other',
          'urn:pulumi:stack::project::pulumi:providers:other::secondary',
          id: 'secondary-id',
        );
        final propertyDependency = ProviderResource.reference(
          'dep',
          'urn:pulumi:stack::project::pulumi:providers:dep::property',
          id: 'property-id',
        );

        _RichOptionsResource(
          'rich',
          dependencyForProperty: propertyDependency,
          options: CustomResourceOptions(
            parent: parent,
            dependsOn: [depB, depA],
            protect: true,
            provider: providerPrimary,
            providers: [providerSecondary],
            aliases: [Alias(name: Input.fromValue('legacy-name'))],
            version: '2.3.4',
            pluginDownloadURL: 'https://example.com/plugin.tgz',
            customTimeouts: const CustomTimeouts(
              create: '1m',
              update: '2m',
              delete: '3m',
            ),
            deleteBeforeReplace: true,
            retainOnDelete: true,
            deletedWith: deletedWith,
            additionalSecretOutputs: ['secretA', 'secretB'],
            ignoreChanges: [' plain ', 'nested.value'],
            replacementTrigger: {'reason': 'rotation'},
          ),
        );

        await deployment.registerOutputs();

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.type, 'pkg:index:RichOptions');
        expect(request.name, 'rich');
        expect(request.custom, isTrue);
        expect(request.parent, await parent.urn.getValue());
        expect(
          request.dependencies,
          equals([await depB.urn.getValue(), await depA.urn.getValue()]),
        );
        expect(request.protect, isTrue);
        expect(
          request.provider,
          equals(await ProviderResource.register(providerPrimary)),
        );
        expect(
          request.providers['other'],
          equals(await ProviderResource.register(providerSecondary)),
        );
        expect(request.aliases, hasLength(1));
        expect(request.aliasSpecs, isTrue);
        expect(request.version, '2.3.4');
        expect(request.pluginDownloadURL, 'https://example.com/plugin.tgz');
        expect(request.deleteBeforeReplace, isTrue);
        expect(request.deleteBeforeReplaceDefined, isTrue);
        expect(request.customTimeouts.create_1, '1m');
        expect(request.customTimeouts.update, '2m');
        expect(request.customTimeouts.delete, '3m');
        expect(request.retainOnDelete, isTrue);
        expect(request.deletedWith, await deletedWith.urn.getValue());
        expect(request.additionalSecretOutputs, ['secretA', 'secretB']);
        expect(request.ignoreChanges, ['plain', 'nested.value']);
        expect(request.replacementTrigger.hasStructValue(), isTrue);
        expect(
          request.replacementTrigger.structValue.fields['reason']?.stringValue,
          'rotation',
        );
        expect(request.propertyDependencies, contains('withDep'));
        expect(
          request.propertyDependencies['withDep']!.urns,
          equals([await propertyDependency.urn.getValue()]),
        );
      },
    );

    test(
      'dependsOn includes transitive child resource urns for component dependencies',
      () async {
        final componentDependency = _DependsOnNestedComponent('dep', 3);
        _DependsOnTargetResource(
          'target',
          CustomResourceOptions(dependsOn: [componentDependency]),
        );

        await deployment.registerOutputs();

        final requests = monitor.capturedRegisterResourceRequests;
        final leafRequest = requests.firstWhere(
          (request) => request.type == 'pkg:index:DependsOnLeaf',
        );
        final targetRequest = requests.firstWhere(
          (request) => request.type == 'pkg:index:DependsOnTarget',
        );

        final expectedLeafUrn =
            'urn:pulumi:stack::project::${leafRequest.type}::${leafRequest.name}';
        expect(targetRequest.dependencies, contains(expectedLeafUrn));
      },
    );

    test(
      'component resource maps singular provider into providers map',
      () async {
        final provider = ProviderResource.reference(
          'pkg',
          'urn:pulumi:stack::project::pulumi:providers:pkg::component',
          id: 'provider-id',
        );

        _ComponentWithProvider(
          'cmp',
          ComponentResourceOptions(provider: provider),
        );

        await deployment.registerOutputs();

        final request = monitor.capturedRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.custom, isFalse);
        expect(request.provider, isEmpty);
        expect(
          request.providers['pkg'],
          equals(await ProviderResource.register(provider)),
        );
      },
    );

    test('rejects ignoreChanges path starting with dot', () async {
      _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['.bad']),
      );

      await expectLater(
        deployment.registerOutputs(),
        throwsA(isA<ArgumentError>()),
      );
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test('rejects ignoreChanges path ending with dot', () async {
      _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['bad.']),
      );

      await expectLater(
        deployment.registerOutputs(),
        throwsA(isA<ArgumentError>()),
      );
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test('rejects ignoreChanges path containing empty segments', () async {
      _PackageBackedResource(
        'thing',
        registerPackageRequest: deployment_models.RegisterPackageRequest(
          name: 'pulumi-pkg',
          version: '1.0.0',
        ),
        options: CustomResourceOptions(ignoreChanges: ['bad..path']),
      );

      await expectLater(
        deployment.registerOutputs(),
        throwsA(isA<ArgumentError>()),
      );
      expect(monitor.capturedRegisterResourceRequest, isNull);
    });

    test(
      'resource transform registration fails with parity message when transforms unsupported',
      () async {
        monitor.supportsFeatureValue = false;

        _TransformEnabledResource(
          'transforming',
          options: CustomResourceOptions(
            resourceTransforms: [
              (
                ResourceTransformArgs args, [
                CancellationToken? cancellationToken,
              ]) async => null,
            ],
          ),
        );

        await expectLater(
          deployment.registerOutputs(),
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              'message',
              contains('does not support transforms'),
            ),
          ),
        );
        expect(monitor.requestedFeatures, equals(['transforms']));
        expect(monitor.capturedRegisterResourceRequest, isNull);
      },
    );

    test(
      'resource transform registration fails with parity message when supportsFeature is unimplemented',
      () async {
        monitor.supportsFeatureError = GrpcError.unimplemented(
          'supportsFeature RPC unavailable',
        );

        _TransformEnabledResource(
          'transforming',
          options: CustomResourceOptions(
            resourceTransforms: [
              (
                ResourceTransformArgs args, [
                CancellationToken? cancellationToken,
              ]) async => null,
            ],
          ),
        );

        await expectLater(
          deployment.registerOutputs(),
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              'message',
              contains('does not support transforms'),
            ),
          ),
        );
        expect(monitor.requestedFeatures, equals(['transforms']));
        expect(monitor.capturedRegisterResourceRequest, isNull);
      },
    );
  });
}
