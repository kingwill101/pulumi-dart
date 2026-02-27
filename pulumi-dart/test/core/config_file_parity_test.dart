import 'package:pulumi/src/config.dart';
import 'package:test/test.dart';

class _ConfigHarness with ConfigMixin {
  @override
  final String projectName;

  final Map<String, String> env;

  _ConfigHarness({required this.projectName, required this.env});

  @override
  Map<String, String> get environment => env;
}

void main() {
  group('config_file parity', () {
    test(
      'config mixin parses config and secret key payloads from environment',
      () {
        final harness = _ConfigHarness(
          projectName: 'pkg',
          env: {
            'PULUMI_CONFIG': '{"pkg:config:token":"abc","other:value":"x"}',
            'PULUMI_CONFIG_SECRET_KEYS': '["pkg:config:token"]',
          },
        );
        harness.initializeConfig();

        expect(harness.getConfig('token'), equals('abc'));
        expect(harness.getConfig('other:value'), equals('x'));
        expect(harness.isConfigSecret('token'), isTrue);
        expect(harness.isConfigSecret('other:value'), isFalse);
      },
    );
  });
}
