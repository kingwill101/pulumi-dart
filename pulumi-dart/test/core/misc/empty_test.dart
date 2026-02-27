import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

void main() {
  group('empty', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('registerOutputs succeeds when program has no resources', () async {
      await deployment.registerOutputs();
      expect(monitor.registerResourceRequests, isEmpty);
    });
  });
}
