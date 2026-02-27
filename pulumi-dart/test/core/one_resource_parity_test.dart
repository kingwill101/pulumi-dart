import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';

class _OneResource extends CustomResource {
  _OneResource(String name)
    : super('test:index:OneResource', name, const {}, CustomResourceOptions());
}

void main() {
  group('one_resource parity', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('registers one custom resource', () async {
      _OneResource('res');

      await deployment.registerOutputs();

      expect(monitor.registerResourceRequests, hasLength(1));
      final request = monitor.registerResourceRequests.single;
      expect(request.type, equals('test:index:OneResource'));
      expect(request.name, equals('res'));
    });
  });
}
