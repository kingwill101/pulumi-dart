import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';
import '../test_utils/output_test_utils.dart';

void main() {
  group('output composition', () {
    test('apply resolves nested output value', () async {
      final outer = createOutputData(value: 1, isKnown: true);
      final resolved = outer.apply(
        (_) => createOutputData(value: 99, isKnown: true),
      );
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals(99));
      expect(data.isSecret, isFalse);
    });

    test('apply propagates nested output error', () async {
      final outer = createOutputData(value: 1, isKnown: true);
      final resolved = outer.apply(
        (_) => Output<int>(
          Future<OutputData<int>>(() async => throw StateError('boom')),
        ),
      );

      await expectLater(resolved.getData(), throwsA(isA<StateError>()));
    });

    test('Output.all unions resources and secret bit', () async {
      final res1 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r1');
      final res2 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r2');

      final all = Output.all<int>([
        createOutputData(value: 1, isKnown: true, resources: {res1}),
        createOutputData(
          value: 2,
          isKnown: true,
          isSecret: true,
          resources: {res2},
        ),
      ]);

      final data = await all.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals([1, 2]));
      expect(data.resources, equals({res1, res2}));
    });

    test('Output.all with unknown input returns unknown', () async {
      final all = Output.all<int>([
        createOutputData(value: 1, isKnown: true),
        createOutputData(value: null, isKnown: false),
      ]);

      final data = await all.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply keeps inner value when inner output is unknown', () async {
      final outer = createOutput(1, true);
      final resolved = outer.apply(
        (_) => createOutputRetainingUnknown('inner', false),
      );
      final data = await resolved.getData();

      expect(data.isKnown, isFalse);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isFalse);
    });

    test(
      'apply keeps inner value and secret when inner output unknown and secret',
      () async {
        final outer = createOutput(1, true);
        final resolved = outer.apply(
          (_) => createOutputRetainingUnknown('inner', false, true),
        );
        final data = await resolved.getData();

        expect(data.isKnown, isFalse);
        expect(data.value, equals('inner'));
        expect(data.isSecret, isTrue);
      },
    );

    test('apply propagates true secret bit from inner output', () async {
      final outer = createOutput(1, true, false);
      final resolved = outer.apply((_) => createOutput('inner', true, true));
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isTrue);
    });

    test('apply retains true secret bit from outer output', () async {
      final outer = createOutput(1, true, true);
      final resolved = outer.apply((_) => createOutput('inner', true, false));
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isTrue);
    });

    test('apply does not run callback when outer output is unknown', () async {
      var callbackInvoked = false;
      final outer = createOutput<int>(1, false);
      final resolved = outer.apply((_) {
        callbackInvoked = true;
        return createOutputData(value: 'inner', isKnown: true);
      });
      final data = await resolved.getData();

      expect(callbackInvoked, isFalse);
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply unions outer and inner resources', () async {
      final res1 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r1');
      final res2 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r2');
      final outer = createOutputWithResources([res1], 1, true);
      final resolved = outer.apply(
        (_) => createOutputWithResources([res2], 'inner', true),
      );
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
      expect(data.resources, equals({res1, res2}));
    });

    test(
      'createSecret preserves unknown state and dependency resources',
      () async {
        final dep = DependencyResource('urn:pulumi:dev::proj::pkg:type::dep');
        final source = Output<String>(
          Future.value(
            OutputData<String>(
              value: null,
              isKnown: false,
              isSecret: false,
              resources: {dep},
            ),
          ),
        );

        final secret = Output.createSecret(source);
        final data = await secret.getData();

        expect(data.isKnown, isFalse);
        expect(data.isSecret, isTrue);
        expect(data.value, isNull);
        expect(data.resources, equals({dep}));
      },
    );

    test('unsecret preserves unknown state and dependency resources', () async {
      final dep = DependencyResource('urn:pulumi:dev::proj::pkg:type::dep');
      final source = Output<String>(
        Future.value(
          OutputData<String>(
            value: null,
            isKnown: false,
            isSecret: true,
            resources: {dep},
          ),
        ),
      );

      final plain = Output.unsecret(source);
      final data = await plain.getData();

      expect(data.isKnown, isFalse);
      expect(data.isSecret, isFalse);
      expect(data.value, isNull);
      expect(data.resources, equals({dep}));
    });
  });

  group('output tuple helpers', () {
    test('tuple combines values into record', () async {
      final tuple = Output.tuple<int, String>(
        createOutputData(value: 42, isKnown: true),
        createOutputData(value: 'x', isKnown: true),
      );

      final data = await tuple.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals((42, 'x')));
    });

    test('tuple keeps unknown if any input unknown', () async {
      final tuple = Output.tuple<int?, String>(
        createOutputData(value: null, isKnown: false),
        createOutputData(value: 'x', isKnown: true),
      );

      final data = await tuple.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('tuple3 and tuple4 preserve secret bit', () async {
      final tuple3 = Output.tuple3<int, String, bool>(
        createOutputData(value: 1, isKnown: true),
        createOutputData(value: 'a', isKnown: true, isSecret: true),
        createOutputData(value: true, isKnown: true),
      );

      final tuple4 = Output.tuple4<int, String, bool, double>(
        createOutputData(value: 1, isKnown: true),
        createOutputData(value: 'a', isKnown: true),
        createOutputData(value: true, isKnown: true, isSecret: true),
        createOutputData(value: 2.5, isKnown: true),
      );

      final tuple3Data = await tuple3.getData();
      final tuple4Data = await tuple4.getData();

      expect(tuple3Data.isSecret, isTrue);
      expect(tuple3Data.value, equals((1, 'a', true)));
      expect(tuple4Data.isSecret, isTrue);
      expect(tuple4Data.value, equals((1, 'a', true, 2.5)));
    });
  });
}
