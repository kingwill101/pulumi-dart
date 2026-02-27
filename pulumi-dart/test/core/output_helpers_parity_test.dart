import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';

void main() {
  group('output helper parity', () {
    test('output unwraps nested map/list input values', () async {
      final value = output({
        Input.fromValue('hello'): Output.create('world'),
        'list': [Output.create(1), Input.fromValue(2)],
      });

      final data = await value.getData();
      expect(data.isKnown, isTrue);
      expect(
        data.value,
        equals({
          'hello': 'world',
          'list': [1, 2],
        }),
      );
    });

    test('output becomes unknown when nested output is unknown', () async {
      final value = output({
        'known': 1,
        'unknown': Output.createUnknown<int>(),
      });

      final data = await value.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('output resolves futures recursively', () async {
      final value = output(Future.value(Output.create('future-value')));
      final data = await value.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('future-value'));
    });

    test('output iterable becomes unknown when any item is unknown', () async {
      final value = output([1, Output.createUnknown<int>(), 3]);
      final data = await value.getData();

      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('secret and unsecret preserve value and knownness', () async {
      final wrapped = secret({'a': 1});
      final wrappedData = await wrapped.getData();
      expect(wrappedData.isKnown, isTrue);
      expect(wrappedData.isSecret, isTrue);
      expect(wrappedData.value, equals({'a': 1}));

      final plain = unsecret(wrapped);
      final plainData = await plain.getData();
      expect(plainData.isKnown, isTrue);
      expect(plainData.isSecret, isFalse);
      expect(plainData.value, equals({'a': 1}));
    });

    test('jsonStringify and jsonParse roundtrip values', () async {
      final encoded = jsonStringify({
        'x': Output.create(1),
        'y': [Output.create('a'), 2],
      });
      final encodedValue = await encoded.getValue();
      expect(encodedValue, equals('{"x":1,"y":["a",2]}'));

      final decoded = jsonParse(encoded);
      expect(
        await decoded.getValue(),
        equals({
          'x': 1,
          'y': ['a', 2],
        }),
      );
    });

    test('deferredOutput resolves and keeps source metadata', () async {
      final dep = DependencyResource(
        'urn:pulumi:stack::project::pkg:type::dep',
      );
      final source = Output<String>(
        Future.value(
          OutputData<String>(
            value: 'hello',
            isKnown: true,
            isSecret: true,
            resources: {dep},
          ),
        ),
      );

      final (result, resolve) = deferredOutput<String>();
      resolve(source);

      final data = await result.getData();
      expect(data.value, equals('hello'));
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.resources, equals({dep}));
    });

    test('deferredOutput propagates source errors', () async {
      final source = Output<String>(
        Future<OutputData<String>>.error(StateError('boom')),
      );

      final (result, resolve) = deferredOutput<String>();
      resolve(source);

      await expectLater(result.getData(), throwsStateError);
    });
  });
}
