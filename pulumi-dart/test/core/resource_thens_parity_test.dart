import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';
import '../test_utils/monitor_test_utils.dart';

class _ResourceThensMonitor extends BaseMonitor {
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
    final response = RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = request.name;
    if (request.type == 'test:index:ResourceA') {
      response.object = Struct()
        ..fields['outprop'] = (Value()..stringValue = 'output yeah');
    } else {
      response.object = Struct();
    }
    return response;
  }
}

class _ResourceA extends CustomResource {
  late final Output<int> inprop;
  late final Output<String> outprop;

  _ResourceA(String name)
    : super('test:index:ResourceA', name, {
        'inprop': Input.fromValue(777),
      }, CustomResourceOptions()) {
    inprop = Output.create(777);
    outprop = registerOutput<String>('outprop');
  }
}

class _ResourceB extends CustomResource {
  _ResourceB(String name, _ResourceA source)
    : super('test:index:ResourceB', name, {
        'other_in': Input.fromOutput(source.inprop.apply((value) => value)),
        'other_out': Input.fromOutput(source.outprop.apply((value) => value)),
        'other_id': Input.fromOutput(source.id.apply((value) => value)),
      }, CustomResourceOptions());
}

void main() {
  group('resource_thens parity', () {
    late _ResourceThensMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _ResourceThensMonitor();
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
      'resource output thens preserve dependency and resolved values',
      () async {
        final a = _ResourceA('resourceA');
        _ResourceB('resourceB', a);

        await deployment.registerOutputs();

        expect(
          monitor.requests.map((r) => r.name),
          equals(['resourceA', 'resourceB']),
        );

        final request = monitor.requests.last;
        expect(request.propertyDependencies.keys, contains('other_out'));
        expect(request.propertyDependencies.keys, contains('other_id'));

        final objectFields = request.object.fields;
        expect(objectFields['other_in']?.numberValue, equals(777));
        expect(objectFields['other_out']?.stringValue, equals('output yeah'));
        expect(objectFields['other_id']?.stringValue, equals('resourceA'));
      },
    );
  });
}
