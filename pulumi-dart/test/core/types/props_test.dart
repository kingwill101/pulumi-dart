import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:test/test.dart';

void main() {
  group('props', () {
    test(
      'serializer marshals basic primitive and collection properties',
      () async {
        final serializer = Serializer();
        final serialized = await serializer.serializeAsync('test', {
          'aNum': 42,
          'bStr': 'a string',
          'cNull': null,
          'dArr': ['x', 42, Input.fromValue(true), Input.fromValue(null)],
        }, false);

        expect(
          serialized,
          equals({
            'aNum': 42,
            'bStr': 'a string',
            'dArr': ['x', 42, true, null],
          }),
        );
      },
    );

    test(
      'serializer marshals secrets with secret signature envelope',
      () async {
        final serializer = Serializer();
        final serialized =
            await serializer.serializeAsync('test', {
                  'plain': 1,
                  'secret': secret('shh'),
                }, false)
                as Map<String, dynamic>;

        expect(serialized['plain'], equals(1));
        expect(serialized['secret'], isA<Map<String, dynamic>>());
        final secretPayload = serialized['secret'] as Map<String, dynamic>;
        expect(
          secretPayload[Constants.specialSigKey],
          Constants.specialSecretSig,
        );
        expect(secretPayload[Constants.valueName], 'shh');
      },
    );
  });
}
