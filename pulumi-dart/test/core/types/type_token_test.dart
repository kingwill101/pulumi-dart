import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

class _ResourceWithoutToken {}

class _ResourceWithToken {}

enum _EnumWithoutToken { value }

enum _EnumWithToken { value }

void main() {
  group('type_token', () {
    setUp(() {
      clearTypeTokensForTesting();
    });

    test('returns null for types without registered tokens', () {
      expect(_EnumWithoutToken.value.name, equals('value'));
      expect(getTypeToken(_ResourceWithoutToken), isNull);
      expect(getTypeToken(_EnumWithoutToken), isNull);
    });

    test('returns registered token for class and enum types', () {
      expect(_EnumWithToken.value.name, equals('value'));
      registerTypeToken<_ResourceWithToken>('package:module:resource');
      registerTypeToken<_EnumWithToken>('package:module:enum');

      expect(
        getTypeToken(_ResourceWithToken),
        equals('package:module:resource'),
      );
      expect(getTypeToken(_EnumWithToken), equals('package:module:enum'));
    });
  });
}
