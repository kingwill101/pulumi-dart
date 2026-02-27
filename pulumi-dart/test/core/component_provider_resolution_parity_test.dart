import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';
import '../test_utils/resource_test_utils.dart';

class _ProviderParentComponent extends ComponentResource {
  _ProviderParentComponent(
    String name, {
    required ComponentResourceOptions options,
  }) : super('test:index:ProviderParentComponent', name, const {}, options);
}

class _AwsChildResource extends CustomResource {
  _AwsChildResource(String name, {required CustomResourceOptions options})
    : super('aws:s3/bucket:Bucket', name, const {}, options);
}

void main() {
  group('component_provider_resolution parity', () {
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
      'child custom resource inherits parent component provider by package',
      () async {
        final provider = providerResource('aws', 'default');
        final parent = _ProviderParentComponent(
          'parent',
          options: ComponentResourceOptions(provider: provider),
        );

        _AwsChildResource(
          'child',
          options: CustomResourceOptions(parent: parent),
        );

        await deployment.registerOutputs();

        final childRequest = monitor.registerResourceRequests.firstWhere(
          (r) => r.name == 'child',
        );
        final expectedProviderRef = await ProviderResource.register(provider);
        expect(childRequest.provider, equals(expectedProviderRef));
      },
    );
  });
}
