import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _DependencyResource extends CustomResource {
  _DependencyResource(String name)
    : super(
        'test:index:DependencyResource',
        name,
        const {},
        CustomResourceOptions(),
      );
}

class _PropertyDependentResource extends CustomResource {
  _PropertyDependentResource(String name, {required Resource dep})
    : super('test:index:PropertyDependentResource', name, {
        'ref': Input.fromValue(dep),
      }, CustomResourceOptions());
}

void main() {
  group('property_dependencies', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('propertyDependencies include referenced resource URN', () async {
      final dep = _DependencyResource('dep');
      _PropertyDependentResource('target', dep: dep);

      await deployment.registerOutputs();

      expect(monitor.registerResourceRequests, hasLength(2));
      final targetRequest = monitor.registerResourceRequests.firstWhere(
        (r) => r.name == 'target',
      );
      expect(targetRequest.propertyDependencies.containsKey('ref'), isTrue);

      final depUrn = await dep.urn.getValue();
      final refDeps = targetRequest.propertyDependencies['ref']!.urns;
      expect(refDeps, contains(depUrn));
    });
  });
}
