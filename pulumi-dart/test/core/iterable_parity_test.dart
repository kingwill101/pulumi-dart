import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

class _InstanceWithPrivateIp {
  final Output<String> id;
  final Output<String> privateIp;

  _InstanceWithPrivateIp(this.id, this.privateIp);
}

class _InstanceWithAvailabilityZone {
  final Output<String> id;
  final Output<String> availabilityZone;

  _InstanceWithAvailabilityZone(this.id, this.availabilityZone);
}

void main() {
  group('iterable parity', () {
    test('toObject converts items into a known output map', () async {
      final instances = <_InstanceWithPrivateIp>[
        _InstanceWithPrivateIp(
          Output.create('i-1234'),
          Output.create('192.168.1.2'),
        ),
        _InstanceWithPrivateIp(
          Output.create('i-5678'),
          Output.create('192.168.1.5'),
        ),
      ];

      final result = toObject<_InstanceWithPrivateIp, String, String>(
        instances,
        (instance) => (instance.id, instance.privateIp),
      );

      final data = await result.getData();
      expect(data.isKnown, isTrue);
      expect(
        data.value,
        equals({'i-1234': '192.168.1.2', 'i-5678': '192.168.1.5'}),
      );
    });

    test('groupBy converts items into grouped known output map', () async {
      final instances = <_InstanceWithAvailabilityZone>[
        _InstanceWithAvailabilityZone(
          Output.create('i-1234'),
          Output.create('us-east-1a'),
        ),
        _InstanceWithAvailabilityZone(
          Output.create('i-1538'),
          Output.create('us-west-2c'),
        ),
        _InstanceWithAvailabilityZone(
          Output.create('i-5678'),
          Output.create('us-east-1a'),
        ),
      ];

      final result = groupBy<_InstanceWithAvailabilityZone, String, String>(
        instances,
        (instance) => (instance.availabilityZone, instance.id),
      );

      final data = await result.getData();
      expect(data.isKnown, isTrue);
      expect(
        data.value,
        equals({
          'us-east-1a': ['i-1234', 'i-5678'],
          'us-west-2c': ['i-1538'],
        }),
      );
    });
  });
}
