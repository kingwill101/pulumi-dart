import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('unwrap parity', () {
    test('output unwraps nested promises and outputs recursively', () async {
      final value = output({
        'a': Future.value(Output.create(1)),
        'b': [Output.create('x'), Future.value(Output.create('y'))],
      });

      final data = await value.getData();
      expect(data.isKnown, isTrue);
      expect(
        data.value,
        equals({
          'a': 1,
          'b': ['x', 'y'],
        }),
      );
    });

    test('output preserves dependency resources while unwrapping', () async {
      final r1 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r1');
      final r2 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r2');

      final nested = output([
        Output<String>(
          Future.value(
            OutputData<String>(
              value: 'first',
              isKnown: true,
              isSecret: false,
              resources: {r1},
            ),
          ),
        ),
        {
          'second': Output<String>(
            Future.value(
              OutputData<String>(
                value: 'second',
                isKnown: true,
                isSecret: false,
                resources: {r2},
              ),
            ),
          ),
        },
      ]);

      final data = await nested.getData();
      expect(data.isKnown, isTrue);
      expect(
        data.value,
        equals([
          'first',
          {'second': 'second'},
        ]),
      );
      expect(data.resources, equals({r1, r2}));
    });
  });
}
