import 'dart:convert';

import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('store config behavior', () {
    late Map<String, String> originalConfig;

    setUp(() {
      originalConfig = Map<String, String>.from(getGlobalStore().config);
      setAllConfig({});
    });

    tearDown(() {
      final store = getGlobalStore();
      store.config
        ..clear()
        ..addAll(originalConfig);
    });

    test('setAllConfig cleans namespaced config keys', () {
      setAllConfig({
        'pkg:config:sss': 'a string value',
        'other:config:baz': 'from other namespace',
      });

      expect(getConfig('pkg:sss'), equals('a string value'));
      expect(getConfig('other:baz'), equals('from other namespace'));
      expect(allConfig(), containsPair('pkg:sss', 'a string value'));
      expect(allConfig(), containsPair('other:baz', 'from other namespace'));
    });

    test('setConfig cleans namespaced config key when setting', () {
      setConfig('pkg:config:token', 'abc123');

      expect(getConfig('pkg:token'), equals('abc123'));
      expect(allConfig(), containsPair('pkg:token', 'abc123'));
    });

    test('isConfigSecret matches cleaned key for prefixed secret entries', () {
      setAllConfig(
        {'pkg:config:sss': 'a string value'},
        ['pkg:config:sss', 'other:config:baz'],
      );

      expect(isConfigSecret('pkg:sss'), isTrue);
      expect(isConfigSecret('other:baz'), isTrue);
      expect(isConfigSecret('pkg:missing'), isFalse);
    });

    test('isConfigSecret tolerates malformed secret keys payload', () {
      final store = getGlobalStore();
      store.config[configSecretKeysEnvKey] = '{bad-json';

      expect(isConfigSecret('pkg:sss'), isFalse);
    });

    test('allConfig tolerates malformed config payload', () {
      final store = getGlobalStore();
      store.config[configEnvKey] = '{bad-json';

      expect(allConfig(), isEmpty);
    });

    test('persisted config payload is valid JSON map', () {
      setAllConfig({'pkg:a': '1', 'pkg:b': '2'});
      final raw = getGlobalStore().config[configEnvKey];
      expect(raw, isNotNull);

      final decoded = jsonDecode(raw!);
      expect(decoded, isA<Map<String, dynamic>>());
      expect((decoded as Map<String, dynamic>)['pkg:a'], equals('1'));
      expect(decoded['pkg:b'], equals('2'));
    });
  });
}
