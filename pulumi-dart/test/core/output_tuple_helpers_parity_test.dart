import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';

void main() {
  group('output tuple helper parity', () {
    test('tuple3 combines known values into a record', () async {
      final output = Output.tuple3(
        Output.create(1),
        Output.create('two'),
        Output.create(true),
      );

      final value = await output.getValue();
      expect(value.$1, equals(1));
      expect(value.$2, equals('two'));
      expect(value.$3, isTrue);
    });

    test(
      'tuple3 propagates unknown/secret flags and resource unions',
      () async {
        final dep1 = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:A::a',
        );
        final dep2 = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:B::b',
        );

        final known = Output<String>(
          Future.value(
            OutputData<String>(
              value: 'a',
              isKnown: true,
              isSecret: false,
              resources: {dep1},
            ),
          ),
        );
        final unknownSecret = Output<String>(
          Future.value(
            OutputData<String>(
              value: null,
              isKnown: false,
              isSecret: true,
              resources: {dep2},
            ),
          ),
        );

        final output = Output.tuple3(known, unknownSecret, Output.create('c'));
        final data = await output.getData();

        expect(data.isKnown, isFalse);
        expect(data.isSecret, isTrue);
        expect(data.resources, hasLength(2));
        expect(data.resources, contains(dep1));
        expect(data.resources, contains(dep2));
        expect(data.value, isNull);
      },
    );

    test('tuple4 combines known values in order', () async {
      final output = Output.tuple4(
        Output.create('a'),
        Output.create(2),
        Output.create(false),
        Output.create(4.5),
      );

      final value = await output.getValue();
      expect(value.$1, equals('a'));
      expect(value.$2, equals(2));
      expect(value.$3, isFalse);
      expect(value.$4, equals(4.5));
    });
  });
}
