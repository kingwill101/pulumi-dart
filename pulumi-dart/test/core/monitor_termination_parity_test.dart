import 'package:grpc/grpc.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';
import '../test_utils/monitor_test_utils.dart';

class _UnavailableMonitor extends BaseMonitor {
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
    throw GrpcError.unavailable('monitor unavailable');
  }
}

class _TerminationCustomResource extends CustomResource {
  _TerminationCustomResource(String name, {CustomResourceOptions? options})
    : super('test:index:TerminationCustomResource', name, {
        'inprop': Input.fromValue('hello'),
      }, options ?? CustomResourceOptions());
}

void main() {
  group('monitor termination parity', () {
    late DeploymentImpl deployment;

    setUp(() {
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: _UnavailableMonitor(),
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'resource registration surfaces monitor unavailable without hanging',
      () async {
        final resource = _TerminationCustomResource('mycustom');
        final outprop = resource.registerOutput<String>('outprop');

        await expectLater(
          deployment.registerOutputs().timeout(const Duration(seconds: 2)),
          throwsA(isA<GrpcError>()),
        );
        await expectLater(outprop.getData(), throwsA(isA<GrpcError>()));
      },
    );
  });
}
