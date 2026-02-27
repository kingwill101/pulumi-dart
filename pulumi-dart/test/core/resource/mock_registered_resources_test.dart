import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../mocks/mock_monitor.dart';
import '../../mocks/mocks.dart';

class _TestMocks implements IMocks {
  @override
  Future<Map<String, dynamic>> call(MockCallArgs args) async => const {};

  @override
  Future<(String?, Map<String, dynamic>)> newResource(
    MockResourceArgs args,
  ) async {
    return ('${args.name}-id', args.inputs);
  }

  @override
  Future<void> registerResourceOutputs(
    MockRegisterResourceOutputsRequest args,
  ) async {}
}

class _RegisteredComponent extends ComponentResource {
  _RegisteredComponent(String name, {ComponentResourceOptions? options})
    : super(
        'test:index:RegisteredComponent',
        name,
        const {},
        options ?? ComponentResourceOptions(),
      );
}

class _RegisteredCustom extends CustomResource {
  _RegisteredCustom(String name, {CustomResourceOptions? options})
    : super(
        'test:index:RegisteredCustom',
        name,
        const {},
        options ?? CustomResourceOptions(),
      );
}

void main() {
  group('mock registered resources', () {
    late MockMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = MockMonitor(_TestMocks());
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'registered component and custom resources are tracked by mock monitor',
      () async {
        final component = _RegisteredComponent('component');
        final custom = _RegisteredCustom(
          'custom',
          options: CustomResourceOptions(parent: component),
        );

        await deployment.registerOutputs();

        final componentUrn = await component.urn.getValue();
        final customUrn = await custom.urn.getValue();

        expect(monitor.registeredResourceUrns, contains(componentUrn));
        expect(monitor.registeredResourceUrns, contains(customUrn));
      },
    );
  });
}
