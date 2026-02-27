import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/output_completion_source.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';

void main() {
  group('output completion source parity', () {
    final resource = DependencyResource(
      'urn:pulumi:dev::proj::pkg:index:Dependency::dep',
    );

    test(
      'targetType and output wrappers expose typed output metadata',
      () async {
        final source = OutputCompletionSource.create<int>(resource);
        expect(source.targetType, equals(int));

        source.setValue(
          const OutputData<Object?>(
            value: 42.0,
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        );
        expect(await source.output.getValue(), equals(42));
      },
    );

    test('setStringValue with unknown marks output unknown', () async {
      final source = OutputCompletionSource.create<String?>(resource);
      source.setStringValue('ignored', false);

      final data = await source.output.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('setStringValue ignores updates after completion', () async {
      final source = OutputCompletionSource.create<String>(resource);
      source.setStringValue('first', true);
      source.setStringValue('second', true);

      expect(await source.output.getValue(), equals('first'));
    });

    test('setValue coerces list<bool> and generic list values', () async {
      final boolList = OutputCompletionSource.create<List<bool>?>(resource);
      boolList.setValue(
        const OutputData<Object?>(
          value: <Object?>[true, false],
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final boolListValue = await boolList.output.getValue();
      expect(boolListValue, equals(<bool>[true, false]));

      final genericList = OutputCompletionSource.create<List<Object?>>(
        resource,
      );
      genericList.setValue(
        const OutputData<Object?>(
          value: <Object?>[1, 'two'],
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      expect(await genericList.output.getValue(), equals(<Object?>[1, 'two']));
    });
  });
}
