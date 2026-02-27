import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../test_utils/deployment_capture_test_utils.dart';
import '../test_utils/resource_test_utils.dart';

class _RemoteComponent extends ComponentResource {
  _RemoteComponent(String name, {required ComponentResourceOptions options})
    : super('test:index:Component', name, const {}, options, remote: true);
}

void main() {
  group('remote_component_providers parity', () {
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
      'remote component infers default provider from providers by package',
      () async {
        final testProvider = providerResource('test', 'myprovider');
        final fooProvider = providerResource('foo', 'fooprovider');

        _RemoteComponent(
          'singular',
          options: ComponentResourceOptions(provider: testProvider),
        );
        _RemoteComponent(
          'map',
          options: ComponentResourceOptions(providers: [testProvider]),
        );
        _RemoteComponent(
          'array',
          options: ComponentResourceOptions(providers: [testProvider]),
        );

        _RemoteComponent(
          'foo-singular',
          options: ComponentResourceOptions(provider: fooProvider),
        );
        _RemoteComponent(
          'foo-map',
          options: ComponentResourceOptions(providers: [fooProvider]),
        );
        _RemoteComponent(
          'foo-array',
          options: ComponentResourceOptions(providers: [fooProvider]),
        );

        await deployment.registerOutputs();

        final expectedTestProvider = await ProviderResource.register(
          testProvider,
        );
        for (final name in ['singular', 'map', 'array']) {
          final request = monitor.registerResourceRequests.firstWhere(
            (r) => r.name == name,
          );
          expect(request.provider, equals(expectedTestProvider));
          expect(request.providers.keys, equals(['test']));
        }

        for (final name in ['foo-singular', 'foo-map', 'foo-array']) {
          final request = monitor.registerResourceRequests.firstWhere(
            (r) => r.name == name,
          );
          expect(request.provider, isEmpty);
          expect(request.providers.keys, equals(['foo']));
        }
      },
    );
  });
}
