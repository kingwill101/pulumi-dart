import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';

class _BrokenDynamicLikeResource extends CustomResource {
  _BrokenDynamicLikeResource(String name, Map<String, dynamic> props)
    : super(
        'test:index:BrokenDynamicLikeResource',
        name,
        Input.mapToInputs(props),
        CustomResourceOptions(),
      );
}

class _UnsupportedNestedValue {
  const _UnsupportedNestedValue();
}

void main() {
  group('broken_dynamic_provider parity', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('type mismatches fail quickly rather than hanging', () async {
      _BrokenDynamicLikeResource('broken', {
        'x': {'my_key_1': const _UnsupportedNestedValue()},
      });

      await expectLater(
        deployment.registerOutputs().timeout(const Duration(seconds: 2)),
        throwsA(isA<Exception>()),
      );
      expect(monitor.registerResourceRequests, isEmpty);
    });
  });
}
