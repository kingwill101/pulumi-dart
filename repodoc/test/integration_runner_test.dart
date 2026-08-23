import 'package:repodoc/src/integration_runner.dart';
import 'package:test/test.dart';

void main() {
  test('registers only the integration command subsystem', () {
    final commands =
        createIntegrationRunner().commands.keys
            .where((command) => command != 'help')
            .toList()
          ..sort();

    expect(commands, [
      'integration:matrix',
      'integration:prewarm',
      'integration:run',
    ]);
  });
}
