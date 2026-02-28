import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/runtime_api.dart';
import 'package:test/test.dart';

class _TestMocks extends Mocks {
  @override
  Future<Map<String, dynamic>> call(MockCallArgs args) async {
    if (args.token == 'test:index:Echo') {
      return <String, dynamic>{'value': args.args['value']};
    }
    if (args.token == 'test:index:Fail') {
      throw Exception('invoke failed in mock');
    }
    return <String, dynamic>{};
  }

  @override
  Future<(String?, Map<String, dynamic>)> newResource(
    MockResourceArgs args,
  ) async {
    if (args.type == 'test:index:Instance') {
      return ('instance-1', <String, dynamic>{'publicIp': '203.0.113.12'});
    }

    if (args.type == 'pulumi:pulumi:StackReference' &&
        args.name.contains('dns')) {
      return (
        args.name,
        <String, dynamic>{
          'outputs': <String, dynamic>{'zone': 'example.com'},
        },
      );
    }

    return ('', <String, dynamic>{});
  }
}

class _Instance extends CustomResource {
  late final Output<String> publicIp;

  _Instance(String name)
    : super('test:index:Instance', name, const {}, CustomResourceOptions()) {
    publicIp = registerOutput<String>('publicIp');
  }
}

void main() {
  group('runtime.setMocks', () {
    tearDown(() {
      runtime.clearMocks();
    });

    test('sets deployment context and registers resources', () async {
      runtime.setMocks(
        _TestMocks(),
        organization: 'org',
        project: 'proj',
        stack: 'dev',
      );

      expect(Deployment.instance.organizationName, equals('org'));
      expect(Deployment.instance.projectName, equals('proj'));
      expect(Deployment.instance.stackName, equals('dev'));
      expect(Deployment.instance.isDryRun, isFalse);

      final instance = _Instance('vm');
      final ip = await instance.publicIp.getValue();
      expect(ip, equals('203.0.113.12'));

      final ref = StackReference('dns');
      final zone = await ref.getOutput(Input.fromValue('zone')).getValue();
      expect(zone, equals('example.com'));
    });

    test('supports preview mode and invoke behavior', () async {
      runtime.setMocks(_TestMocks(), preview: true);

      expect(Deployment.instance.isDryRun, isTrue);

      final value = await Deployment.instance.invoke<Map<String, dynamic>>(
        'test:index:Echo',
        <String, dynamic>{'value': 42},
      );
      expect(value['value'], equals(42));

      expect(
        () => Deployment.instance.invoke<Map<String, dynamic>>(
          'test:index:Fail',
          <String, dynamic>{},
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
