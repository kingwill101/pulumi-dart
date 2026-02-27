import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

class _DeprecatedFixture {
  String foo() => 'foo';

  late final String Function() bar = deprecated(
    'bar is deprecated; use foo instead',
    () => 'bar',
  );
}

void main() {
  group('deprecated', () {
    tearDown(() {
      resetDeprecatedWarningEmitter();
    });

    test('deprecated callable can be called', () {
      final fixture = _DeprecatedFixture();
      expect(fixture.bar(), equals('bar'));
    });

    test('deprecated callable is tagged and passthrough is callable', () {
      final fixture = _DeprecatedFixture();
      expect(isDeprecatedCallable(fixture.bar), isTrue);

      final passthrough = getDeprecatedCallable(fixture.bar);
      expect(passthrough, isNotNull);
      expect((passthrough! as String Function())(), equals('bar'));
    });

    test('deprecated callable emits warning once per call', () {
      final messages = <String>[];
      setDeprecatedWarningEmitter(messages.add);

      final fixture = _DeprecatedFixture();
      fixture.bar();

      expect(messages, hasLength(1));
      expect(messages.single, contains('deprecated'));
    });

    test('non-deprecated callable is not tagged', () {
      final fixture = _DeprecatedFixture();
      expect(isDeprecatedCallable(fixture.foo), isFalse);
      expect(getDeprecatedCallable(fixture.foo), isNull);
    });
  });
}
