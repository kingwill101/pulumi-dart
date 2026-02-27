import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:test/test.dart';

class _DeferredCustomResource extends CustomResource {
  _DeferredCustomResource(String name)
    : super(
        'test:index:DeferredCustomResource',
        name,
        const {},
        CustomResourceOptions(),
        dependency: true,
      );
}

void main() {
  group('next_serialize parity', () {
    late Serializer serializer;

    setUp(() {
      serializer = Serializer();
    });

    test('serializes list and map values recursively', () async {
      final listResult = await serializer.serializeAsync('test.list', [
        1,
        2,
        3,
      ], false);
      expect(listResult, equals([1, 2, 3]));

      final mapResult = await serializer.serializeAsync('test.map', {
        'a': Input.fromValue(42),
        'b': Input.fromValue('value'),
      }, false);
      expect(mapResult, equals({'a': 42, 'b': 'value'}));
    });

    test(
      'serializes custom resources as references when keepResources=true',
      () async {
        final resource = _DeferredCustomResource('deferred');
        resource.resolveUrn(
          'urn:pulumi:stack::project::test:index:DeferredCustomResource::deferred',
        );
        resource.resolveId('resource-id', isKnown: true);

        final result = await serializer.serializeAsync(
          'test.resource',
          resource,
          true,
        );

        expect(
          result,
          equals({
            Constants.specialSigKey: Constants.specialResourceSig,
            Constants.resourceUrnName:
                'urn:pulumi:stack::project::test:index:DeferredCustomResource::deferred',
            Constants.resourceIdName: 'resource-id',
          }),
        );
      },
    );

    test('serializes custom resources as id when keepResources=false', () async {
      final resource = _DeferredCustomResource('deferred');
      resource.resolveUrn(
        'urn:pulumi:stack::project::test:index:DeferredCustomResource::deferred',
      );
      resource.resolveId('resource-id', isKnown: true);

      final result = await serializer.serializeAsync(
        'test.resource.id',
        resource,
        false,
      );

      expect(result, equals('resource-id'));
    });

    test('serializes unknown custom resource id as unknown sentinel', () async {
      final resource = _DeferredCustomResource('deferred');
      resource.resolveUrn(
        'urn:pulumi:stack::project::test:index:DeferredCustomResource::deferred',
      );
      resource.resolveId(null, isKnown: false);

      final result = await serializer.serializeAsync(
        'test.resource.unknown',
        resource,
        false,
      );

      expect(result, equals(Constants.unknownValue));
    });
  });
}
