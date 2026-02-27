import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';

class _VersionedResource extends CustomResource {
  _VersionedResource(String name)
    : super(
        'test:index:VersionedResource',
        name,
        const {},
        CustomResourceOptions(
          version: '1.2.3',
          pluginDownloadURL: 'https://example.com/plugins',
        ),
      );
}

void main() {
  group('versions parity', () {
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
      'version and pluginDownloadURL are forwarded to registerResource',
      () async {
        _VersionedResource('res');

        await deployment.registerOutputs();

        final request = monitor.lastRegisterResourceRequest;
        expect(request, isNotNull);
        expect(request!.version, equals('1.2.3'));
        expect(
          request.pluginDownloadURL,
          equals('https://example.com/plugins'),
        );
      },
    );
  });
}
