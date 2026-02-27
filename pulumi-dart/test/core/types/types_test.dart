import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../test_utils/monitor_test_utils.dart';

class _TypesMonitor extends BaseMonitor {
  final List<RegisterResourceRequest> requests = [];

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
    requests.add(request);
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = request.name
      ..object = request.object;
  }
}

class _TypesResource extends CustomResource {
  _TypesResource(String name, Inputs props)
    : super('test:index:TypesResource', name, props, CustomResourceOptions());
}

void main() {
  group('types', () {
    late _TypesMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _TypesMonitor();
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

    test('nested typed object shapes are serialized consistently', () async {
      _TypesResource('testres', {
        'additional': Input.fromValue({
          'firstValue': 'hello',
          'secondValue': 42,
        }),
      });
      _TypesResource('testres5', {
        'extra': Input.fromOutput(
          Output.create({'firstValue': 'foo', 'secondValue': 100}),
        ),
      });
      _TypesResource('testres9', {
        'supplementary': Input.fromValue({
          'firstValue': 'bar',
          'secondValue': 200,
          'third': 'third value',
          'fourth': 'fourth value',
        }),
      });
      _TypesResource('testres13', {
        'ancillary': Input.fromValue({
          'firstValue': 'baz',
          'secondValue': 500,
          'third': 'third value!',
          'fourth': 'fourth!',
        }),
      });

      await deployment.registerOutputs();

      Map<String, dynamic> objectFor(String name) {
        final request = monitor.requests.firstWhere((r) => r.name == name);
        return StructConverter.fromStruct(request.object);
      }

      expect(
        objectFor('testres')['additional'],
        equals({'firstValue': 'hello', 'secondValue': 42}),
      );
      expect(
        objectFor('testres5')['extra'],
        equals({'firstValue': 'foo', 'secondValue': 100}),
      );
      expect(
        objectFor('testres9')['supplementary'],
        equals({
          'firstValue': 'bar',
          'secondValue': 200,
          'third': 'third value',
          'fourth': 'fourth value',
        }),
      );
      expect(
        objectFor('testres13')['ancillary'],
        equals({
          'firstValue': 'baz',
          'secondValue': 500,
          'third': 'third value!',
          'fourth': 'fourth!',
        }),
      );
    });
  });
}
