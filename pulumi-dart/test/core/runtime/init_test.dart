import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../test_utils/monitor_test_utils.dart';

void main() {
  group('init', () {
    test('createForTesting initializes deployment identity fields', () {
      final deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: _InitMonitor(),
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);

      expect(deployment.organizationName, equals('org'));
      expect(deployment.projectName, equals('project'));
      expect(deployment.stackName, equals('stack'));
      expect(deployment.isDryRun, isFalse);

      DeploymentImpl.clearInstance();
    });
  });
}

class _InitMonitor extends BaseMonitor {}
