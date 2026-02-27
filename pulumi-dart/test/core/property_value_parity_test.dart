import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

void main() {
  group('property_value parity', () {
    test('round-trips nested property values through protobuf Value', () async {
      const value = <String, dynamic>{
        'string': 'hello',
        'number': 42,
        'bool': true,
        'list': [1, 2, 3],
        'object': {'nested': 'value'},
      };

      final proto = await StructConverter.toValue(value);
      final decoded = StructConverter.fromValue(proto);

      expect(decoded, equals(value));
    });
  });
}
