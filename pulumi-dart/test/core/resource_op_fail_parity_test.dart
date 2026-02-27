import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';
import '../test_utils/monitor_test_utils.dart';

class _FailingRegisterMonitor extends BaseMonitor {
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
    throw StateError('resource operation failed');
  }
}

class _FailingCustomResource extends CustomResource {
  _FailingCustomResource(String name, {CustomResourceOptions? options})
    : super(
        'test:index:FailingCustomResource',
        name,
        const {},
        options ?? CustomResourceOptions(),
      );
}

void main() {
  group('resource_op_fail parity', () {
    late DeploymentImpl deployment;

    setUp(() {
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: _FailingRegisterMonitor(),
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'resource operation failures surface and fail pending outputs',
      () async {
        final resource = _FailingCustomResource('res');
        final out = resource.registerOutput<String>('status');

        await expectLater(
          deployment.registerOutputs().timeout(const Duration(seconds: 2)),
          throwsA(anyOf(isA<StateError>(), isA<Exception>())),
        );
        await expectLater(out.getData(), throwsA(isA<Exception>()));
      },
    );
  });
}
