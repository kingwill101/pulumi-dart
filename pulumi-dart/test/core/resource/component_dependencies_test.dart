import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _DependencyLeaf extends CustomResource {
  _DependencyLeaf(String name, {required CustomResourceOptions options})
    : super('test:index:DependencyLeaf', name, const {}, options);
}

class _ComponentWithChildDependency extends ComponentResource {
  late final _DependencyLeaf leaf;

  _ComponentWithChildDependency(String name)
    : super('test:index:ComponentWithChildDependency', name, const {}, null) {
    leaf = _DependencyLeaf(
      '$name-leaf',
      options: CustomResourceOptions(parent: this),
    );
  }
}

class _DependencyTarget extends CustomResource {
  _DependencyTarget(String name, {required CustomResourceOptions options})
    : super('test:index:DependencyTarget', name, const {}, options);
}

void main() {
  group('component_dependencies', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'dependsOn on component includes nested child resource dependencies',
      () async {
        final component = _ComponentWithChildDependency('cmp');
        _DependencyTarget(
          'target',
          options: CustomResourceOptions(dependsOn: [component]),
        );

        await deployment.registerOutputs();

        final targetRequest = monitor.registerResourceRequests.firstWhere(
          (r) => r.name == 'target',
        );
        final leafUrn = await component.leaf.urn.getValue();
        expect(targetRequest.dependencies, contains(leafUrn));
      },
    );
  });
}
