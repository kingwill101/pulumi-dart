import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('utils', () {
    test(
      'lazy does not initialize until value is read and only initializes once',
      () {
        var calls = 0;
        final lazyValue = lazy(() {
          calls++;
          return 'loaded';
        });

        expect(lazyValue.isInitialized, isFalse);
        expect(calls, equals(0));

        expect(lazyValue.value, equals('loaded'));
        expect(lazyValue.isInitialized, isTrue);
        expect(calls, equals(1));

        expect(lazyValue.value, equals('loaded'));
        expect(calls, equals(1));
      },
    );

    test('isBlank handles null, whitespace, and non-empty strings', () {
      expect(isBlank(null), isTrue);
      expect(isBlank(''), isTrue);
      expect(isBlank('   \t  '), isTrue);
      expect(isBlank('value'), isFalse);
      expect(isBlank('  value  '), isFalse);
    });
  });
}
