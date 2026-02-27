import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/store/store.dart' as runtime_store;
import 'package:test/test.dart';

class _ConfigMixinHarness with ConfigMixin {
  @override
  final String projectName;
  final Map<String, String> _environment;

  _ConfigMixinHarness(this.projectName, this._environment) {
    initializeConfig();
  }

  @override
  Map<String, String> get environment => _environment;
}

Future<Map<String, dynamic>> _runConfigProbe({
  required String project,
  required List<String> keys,
  required Map<String, String> env,
}) async {
  final result = await Process.run(
    Platform.resolvedExecutable,
    ['run', 'test/test_utils/config_probe.dart', project, ...keys],
    workingDirectory: Directory.current.path,
    environment: {...Platform.environment, ...env},
  );

  expect(result.exitCode, equals(0), reason: '${result.stderr}');

  final stdoutLines = result.stdout
      .toString()
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty)
      .toList();
  expect(stdoutLines, isNotEmpty);

  return jsonDecode(stdoutLines.last) as Map<String, dynamic>;
}

void main() {
  group('config mixin parsing', () {
    test(
      'parses namespaced config and secret keys from provided environment',
      () {
        final harness = _ConfigMixinHarness('proj', {
          'PULUMI_CONFIG': jsonEncode({
            'proj:config:sss': 'a string value',
            'other:config:baz': 'from other namespace',
            'proj:already': 'already namespaced',
          }),
          'PULUMI_CONFIG_SECRET_KEYS': jsonEncode([
            'proj:config:sss',
            'other:config:baz',
          ]),
        });

        expect(harness.getConfig('sss'), equals('a string value'));
        expect(harness.getConfig('other:baz'), equals('from other namespace'));
        expect(harness.getConfig('already'), equals('already namespaced'));
        expect(harness.getConfig('missing'), isNull);
        expect(harness.isConfigSecret('sss'), isTrue);
        expect(harness.isConfigSecret('other:baz'), isTrue);
        expect(harness.isConfigSecret('already'), isFalse);
        expect(harness.isConfigSecret('missing'), isFalse);
      },
    );

    test('malformed config JSON falls back to empty config map', () {
      final harness = _ConfigMixinHarness('proj', {
        'PULUMI_CONFIG': '{malformed-json',
        'PULUMI_CONFIG_SECRET_KEYS': jsonEncode(['proj:config:sss']),
      });

      expect(harness.getConfig('sss'), isNull);
      expect(harness.isConfigSecret('sss'), isTrue);
    });

    test('malformed secret-keys JSON falls back to non-secret values', () {
      final harness = _ConfigMixinHarness('proj', {
        'PULUMI_CONFIG': jsonEncode({'proj:config:sss': 'a string value'}),
        'PULUMI_CONFIG_SECRET_KEYS': '{malformed-json',
      });

      expect(harness.getConfig('sss'), equals('a string value'));
      expect(harness.isConfigSecret('sss'), isFalse);
    });
  });

  group('config api', () {
    late runtime_store.Store store;
    late Map<String, String> originalConfig;

    setUp(() {
      store = runtime_store.getGlobalStore();
      originalConfig = Map<String, String>.from(store.config);
      runtime_store.setAllConfig({});
    });

    tearDown(() {
      store.config
        ..clear()
        ..addAll(originalConfig);
    });

    test('get/require and secret lookup resolve namespaced keys', () {
      runtime_store.setAllConfig(
        {'pkg:config:a': 'foo', 'pkg:bar': 'b', 'otherpkg:config:a': 'other'},
        ['pkg:config:a'],
      );

      final config = Config('pkg');
      expect(config.get('a'), equals('foo'));
      expect(config.require('a'), equals('foo'));
      expect(config.get('bar'), equals('b'));
      expect(config.get('missing'), isNull);
      expect(() => config.require('missing'), throwsA(isA<ConfigException>()));
      expect(config.get('otherpkg:a'), equals('other'));
      expect(config.isSecret('a'), isTrue);
      expect(config.isSecret('bar'), isFalse);
    });

    test('typed getters parse and validate booleans and numbers', () {
      runtime_store.setAllConfig({
        'pkg:boolf': 'false',
        'pkg:boolt': 'true',
        'pkg:num': '42.333',
        'pkg:notnum': 'abc',
      });

      final config = Config('pkg');
      expect(config.getBoolean('boolf'), isFalse);
      expect(config.requireBoolean('boolt'), isTrue);
      expect(config.getBoolean('missing'), isNull);
      expect(() => config.getBoolean('num'), throwsA(isA<ConfigException>()));

      expect(config.getNumber('num'), closeTo(42.333, 0.000001));
      expect(config.requireNumber('num', min: 1, max: 100), isNotNull);
      expect(config.getNumber('missing'), isNull);
      expect(() => config.getNumber('notnum'), throwsA(isA<ConfigException>()));
      expect(
        () => config.requireNumber('num', min: 100),
        throwsA(isA<ConfigException>()),
      );
      expect(
        () => config.requireNumber('num', max: 1),
        throwsA(isA<ConfigException>()),
      );
    });

    test('object and string validation constraints follow semantics', () {
      runtime_store.setAllConfig({
        'pkg:array': '[0, false, 2, "foo"]',
        'pkg:struct': '{"foo":"bar","mim":[]}',
        'pkg:color': 'orange',
        'pkg:strlen': 'abcdefgh',
        'pkg:pattern': 'aBcDeFgH',
        'pkg:invalidJson': '{bad',
      });

      final config = Config('pkg');

      expect(
        config.getObject<List<dynamic>>('array'),
        equals([0, false, 2, 'foo']),
      );
      expect(
        config.requireObject<Map<String, dynamic>>('struct'),
        equals({'foo': 'bar', 'mim': []}),
      );
      expect(config.getObject<Object?>('missing'), isNull);
      expect(
        () => config.getObject<Object?>('invalidJson'),
        throwsA(isA<ConfigException>()),
      );

      expect(
        config.get('color', allowedValues: const ['purple', 'orange', 'blue']),
        equals('orange'),
      );
      expect(
        () => config.get('color', allowedValues: const ['purple', 'black']),
        throwsA(isA<ConfigException>()),
      );

      expect(
        config.get('strlen', minLength: 8, maxLength: 8),
        equals('abcdefgh'),
      );
      expect(
        () => config.get('strlen', minLength: 9),
        throwsA(isA<ConfigException>()),
      );
      expect(
        () => config.get('strlen', maxLength: 7),
        throwsA(isA<ConfigException>()),
      );

      expect(
        config.get('pattern', pattern: RegExp(r'^[a-zA-Z]*$')),
        equals('aBcDeFgH'),
      );
      expect(
        config.get('pattern', pattern: r'^[a-zA-Z]*$'),
        equals('aBcDeFgH'),
      );
      expect(
        () => config.get('pattern', pattern: RegExp(r'^[a-z]*$')),
        throwsA(isA<ConfigException>()),
      );
    });

    test('default config name resolution and required typed getters', () {
      final store = runtime_store.getStore();
      final originalProject = store.settings.options.project;
      addTearDown(() {
        store.settings.options.project = originalProject;
      });

      store.settings.options.project = 'fallback-project';
      runtime_store.setAllConfig({});

      final defaultConfig = Config();
      final explicitConfig = Config('pkg');
      expect(defaultConfig.name, equals('fallback-project'));
      expect(explicitConfig.name, equals('pkg'));

      expect(
        () => explicitConfig.requireBoolean('missing'),
        throwsA(isA<ConfigException>()),
      );
      expect(
        () => explicitConfig.requireNumber('missing'),
        throwsA(isA<ConfigException>()),
      );
      expect(
        () => explicitConfig.requireObject<Map<String, dynamic>>('missing'),
        throwsA(isA<ConfigException>()),
      );
    });

    test('ConfigException formats message in toString', () {
      expect(
        ConfigException('broken').toString(),
        equals('ConfigException: broken'),
      );
    });
  });

  group('config behavior', () {
    test('resolves namespaced and local keys', () async {
      final payload = await _runConfigProbe(
        project: 'testpkg',
        keys: ['sss', 'other:baz', 'already', 'missing'],
        env: {
          'PULUMI_CONFIG': jsonEncode({
            'testpkg:config:sss': 'a string value',
            'other:config:baz': 'from other namespace',
            'testpkg:already': 'already namespaced',
          }),
          'PULUMI_CONFIG_SECRET_KEYS': jsonEncode([
            'testpkg:config:sss',
            'other:config:baz',
          ]),
        },
      );

      final values = payload['values'] as Map<String, dynamic>;
      final secrets = payload['secrets'] as Map<String, dynamic>;

      expect(values['sss'], equals('a string value'));
      expect(values['other:baz'], equals('from other namespace'));
      expect(values['already'], equals('already namespaced'));
      expect(values['missing'], isNull);

      expect(secrets['sss'], isTrue);
      expect(secrets['other:baz'], isTrue);
      expect(secrets['already'], isFalse);
      expect(secrets['missing'], isFalse);
    });

    test('handles malformed config JSON as empty config', () async {
      final payload = await _runConfigProbe(
        project: 'testpkg',
        keys: ['sss'],
        env: {
          'PULUMI_CONFIG': '{malformed-json',
          'PULUMI_CONFIG_SECRET_KEYS': jsonEncode(['testpkg:config:sss']),
        },
      );

      final values = payload['values'] as Map<String, dynamic>;
      final secrets = payload['secrets'] as Map<String, dynamic>;

      expect(values['sss'], isNull);
      expect(secrets['sss'], isTrue);
    });

    test('handles malformed secret-keys JSON as non-secret', () async {
      final payload = await _runConfigProbe(
        project: 'testpkg',
        keys: ['sss'],
        env: {
          'PULUMI_CONFIG': jsonEncode({'testpkg:config:sss': 'a string value'}),
          'PULUMI_CONFIG_SECRET_KEYS': '{malformed-json',
        },
      );

      final values = payload['values'] as Map<String, dynamic>;
      final secrets = payload['secrets'] as Map<String, dynamic>;

      expect(values['sss'], equals('a string value'));
      expect(secrets['sss'], isFalse);
    });
  });
}
