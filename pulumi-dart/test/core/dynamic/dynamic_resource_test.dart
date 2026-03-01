import 'package:pulumi/dynamic.dart' as dyn;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../test_utils/deployment_capture_test_utils.dart';

class _TestDynamicResource extends dyn.Resource {
  _TestDynamicResource(
    super.provider,
    super.name,
    super.props, {
    super.module,
    super.type = 'Resource',
  });
}

void main() {
  group('dynamic_resource', () {
    late CapturingRegisterMonitor monitor;
    late pulumi.DeploymentImpl deployment;

    setUp(() {
      monitor = CapturingRegisterMonitor();
      deployment = configureCapturedDeployment(monitor);
    });

    tearDown(() {
      pulumi.DeploymentImpl.clearInstance();
    });

    test('injects provider payload and dynamic type token', () async {
      final provider = dyn.SerializedProviderReference.fromValue(
        'encoded-provider',
      );

      _TestDynamicResource(
        provider,
        'res',
        pulumi.Input.mapToInputs(<String, dynamic>{'value': 'v'}),
        module: 'demo',
        type: 'Widget',
      );

      await deployment.registerOutputs();

      expect(monitor.registerResourceRequests, hasLength(1));
      final request = monitor.registerResourceRequests.single;
      expect(request.type, equals('pulumi-dart:dynamic/demo:Widget'));
      final serialized = StructConverter.fromStruct(request.object);
      expect(serialized['value'], equals('v'));
      expect(serialized[dyn.providerKey], equals('encoded-provider'));
    });

    test('rejects explicit __provider property in resource inputs', () {
      final provider = dyn.SerializedProviderReference.fromValue('encoded');

      expect(
        () => _TestDynamicResource(
          provider,
          'res',
          pulumi.Input.mapToInputs(<String, dynamic>{
            dyn.providerKey: 'not-allowed',
          }),
        ),
        throwsArgumentError,
      );
      expect(monitor.registerResourceRequests, isEmpty);
    });

    test(
      'uses root dynamic token when module is empty after trimming',
      () async {
        final provider = dyn.SerializedProviderReference.fromValue(
          'encoded-provider',
        );

        _TestDynamicResource(
          provider,
          'res',
          pulumi.Input.mapToInputs(<String, dynamic>{'value': 'v'}),
          module: '   ',
          type: 'Widget',
        );

        await deployment.registerOutputs();

        expect(monitor.registerResourceRequests, hasLength(1));
        final request = monitor.registerResourceRequests.single;
        expect(request.type, equals('pulumi-dart:dynamic:Widget'));
      },
    );
  });
}
