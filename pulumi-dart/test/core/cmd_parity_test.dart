import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('cmd parity', () {
    setUp(() {
      setAllConfig({});
    });

    test('require throws deterministic message for missing config key', () {
      final config = Config('pkg');

      expect(
        () => config.require('missing'),
        throwsA(
          isA<ConfigException>().having(
            (e) => e.message,
            'message',
            contains("Missing required configuration variable 'pkg:missing'."),
          ),
        ),
      );
    });
  });
}
