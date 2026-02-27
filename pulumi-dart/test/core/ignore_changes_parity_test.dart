import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';

class _IgnoreChangesResource extends CustomResource {
  _IgnoreChangesResource(String name, {required CustomResourceOptions options})
    : super('test:index:IgnoreChanges', name, const {}, options);
}

void main() {
  group('ignore_changes parity', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('trimmed ignoreChanges values are forwarded to the monitor', () async {
      _IgnoreChangesResource(
        'res',
        options: CustomResourceOptions(
          ignoreChanges: [' plain ', 'nested.value'],
        ),
      );

      await deployment.registerOutputs();

      final request = monitor.lastRegisterResourceRequest;
      expect(request, isNotNull);
      expect(request!.ignoreChanges, orderedEquals(['plain', 'nested.value']));
    });
  });
}
