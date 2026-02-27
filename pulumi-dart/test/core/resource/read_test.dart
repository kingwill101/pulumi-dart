import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../test_utils/monitor_test_utils.dart';

class _ReadMonitor extends BaseMonitor {
  final List<RegisterResourceRequest> registerRequests = [];
  final List<ReadResourceRequest> readRequests = [];

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    return Future.value(monitorpkg.SupportsFeatureResponse(true));
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    registerRequests.add(request);
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id'
      ..object = Struct();
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    readRequests.add(request);
    return ReadResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..properties = request.properties;
  }
}

class _ParentResource extends CustomResource {
  _ParentResource(String name)
    : super('test:index:MyResource', name, const {}, CustomResourceOptions());
}

class _ReadCustomResource extends CustomResource {
  _ReadCustomResource(
    String name,
    Map<String, Input<dynamic>> props, {
    required CustomResourceOptions options,
  }) : super('test:read:resource', name, props, options);
}

class _ComponentWithId extends ComponentResource {
  _ComponentWithId(String name)
    : super(
        'test:index:WithIdComponent',
        name,
        const {},
        ComponentResourceOptions(id: Input.fromValue('component-id')),
      );
}

void main() {
  group('read', () {
    late _ReadMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _ReadMonitor();
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
      'custom resources with id are read via monitor.readResource',
      () async {
        final foo = _ReadCustomResource(
          'foo',
          {
            'a': Input.fromValue('bar'),
            'b': Input.fromValue(['c', 4, 'd']),
            'c': Input.fromValue({'nest': Input.fromValue('baz')}),
          },
          options: CustomResourceOptions(
            id: Input.fromValue('myresourceid'),
            version: '0.17.9',
          ),
        );

        final parent = _ParentResource('foo2');

        final fooWithParent = _ReadCustomResource(
          'foo-with-parent',
          {'state': Input.fromValue('foo')},
          options: CustomResourceOptions(
            id: Input.fromValue('myresourceid2'),
            version: '0.17.9',
            parent: parent,
          ),
        );

        final fooA = foo.registerOutput<String>('a');
        final fooState = fooWithParent.registerOutput<String>('state');

        await deployment.registerOutputs();

        expect(monitor.registerRequests.map((r) => r.name), contains('foo2'));
        expect(monitor.readRequests, hasLength(2));

        final firstRead = monitor.readRequests.firstWhere(
          (r) => r.name == 'foo',
        );
        expect(firstRead.type, equals('test:read:resource'));
        expect(firstRead.id, equals('myresourceid'));
        expect(firstRead.version, equals('0.17.9'));
        expect(
          StructConverter.fromStruct(firstRead.properties),
          equals({
            'a': 'bar',
            'b': ['c', 4, 'd'],
            'c': {'nest': 'baz'},
          }),
        );

        final parentUrn = await parent.urn.getValue();
        final secondRead = monitor.readRequests.firstWhere(
          (r) => r.name == 'foo-with-parent',
        );
        expect(secondRead.parent, equals(parentUrn));
        expect(secondRead.id, equals('myresourceid2'));
        expect(secondRead.version, equals('0.17.9'));
        expect(
          StructConverter.fromStruct(secondRead.properties),
          equals({'state': 'foo'}),
        );

        expect(await foo.id.getValue(), equals('myresourceid'));
        expect(await fooWithParent.id.getValue(), equals('myresourceid2'));
        expect(await fooA.getValue(), equals('bar'));
        expect(await fooState.getValue(), equals('foo'));
      },
    );

    test('id option is rejected for non-custom resources', () {
      expect(() => _ComponentWithId('bad-component'), throwsArgumentError);
    });
  });
}
