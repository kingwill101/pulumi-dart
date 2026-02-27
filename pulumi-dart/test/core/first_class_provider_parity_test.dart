import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';
import '../test_utils/resource_test_utils.dart';

class _ProviderBackedResource extends CustomResource {
  _ProviderBackedResource(String name, {required CustomResourceOptions options})
    : super('aws:s3/bucket:Bucket', name, const {}, options);
}

void main() {
  group('first_class_provider parity', () {
    late CapturingRegisterMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('custom resource forwards explicit provider reference', () async {
      final provider = providerResource('aws', 'default');
      _ProviderBackedResource(
        'bucket',
        options: CustomResourceOptions(provider: provider),
      );

      await deployment.registerOutputs();

      final request = monitor.lastRegisterResourceRequest;
      expect(request, isNotNull);
      final providerRef = await ProviderResource.register(provider);
      expect(request!.provider, equals(providerRef));
    });
  });
}
