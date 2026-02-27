import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _DeleteBeforeReplaceResource extends CustomResource {
  _DeleteBeforeReplaceResource(
    String name, {
    required CustomResourceOptions options,
  }) : super('test:index:DeleteBeforeReplace', name, const {}, options);
}

void main() {
  group('delete_before_replace', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('deleteBeforeReplace is forwarded as an explicit option', () async {
      _DeleteBeforeReplaceResource(
        'res',
        options: CustomResourceOptions(deleteBeforeReplace: true),
      );

      await deployment.registerOutputs();

      final request = monitor.lastRegisterResourceRequest;
      expect(request, isNotNull);
      expect(request!.deleteBeforeReplace, isTrue);
      expect(request.deleteBeforeReplaceDefined, isTrue);
    });
  });
}
