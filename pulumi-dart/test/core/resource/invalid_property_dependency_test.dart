import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _DependencyResource extends CustomResource {
  _DependencyResource(String name)
    : super('test:index:Dependency', name, const {}, CustomResourceOptions());
}

class _MaybePropertyResource extends CustomResource {
  _MaybePropertyResource(String name, _DependencyResource dependency)
    : super('test:index:MaybeProperty', name, {
        'maybe': Input.fromOutput(dependency.id.apply((_) => null)),
      }, CustomResourceOptions());
}

void main() {
  group('invalid_property_dependency', () {
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
      'property dependency map never includes entries for omitted properties',
      () async {
        final dep = _DependencyResource('resA');
        _MaybePropertyResource('resB', dep);

        await deployment.registerOutputs();

        final request = monitor.registerResourceRequests.firstWhere(
          (r) => r.name == 'resB',
        );
        expect(request.object.fields.containsKey('maybe'), isFalse);
        expect(request.propertyDependencies.containsKey('maybe'), isFalse);

        for (final key in request.propertyDependencies.keys) {
          expect(request.object.fields.containsKey(key), isTrue);
        }
      },
    );
  });
}
