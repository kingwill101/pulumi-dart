import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';

class _TenResource extends CustomResource {
  _TenResource(String name)
    : super('test:index:TenResource', name, const {}, CustomResourceOptions());
}

void main() {
  group('ten_resources parity', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('registers ten custom resources', () async {
      for (var i = 0; i < 10; i++) {
        _TenResource('res-$i');
      }

      await deployment.registerOutputs();

      expect(monitor.registerResourceRequests, hasLength(10));
      for (var i = 0; i < 10; i++) {
        expect(
          monitor.registerResourceRequests.any((r) => r.name == 'res-$i'),
          isTrue,
        );
      }
    });
  });
}
