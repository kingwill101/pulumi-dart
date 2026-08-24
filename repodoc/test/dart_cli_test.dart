import 'dart:io';

import 'package:repodoc/src/infrastructure/dart_cli.dart';
import 'package:test/test.dart';

void main() {
  test('uses the explicit Dart executable override first', () {
    final dart = DartCli.resolve(
      environment: const {
        'PULUMI_DART_EXECUTABLE': '/opt/custom/dart',
        'PATH': '',
      },
      resolvedExecutable: '/usr/bin/repodoc',
      isWindows: false,
    );

    expect(dart.executable, '/opt/custom/dart');
    expect(dart.prefixArguments, isEmpty);
  });

  test('reuses the Dart VM that launched repodoc', () {
    final dart = DartCli.resolve(
      environment: const {'PATH': ''},
      resolvedExecutable: '/opt/fvm/versions/3.11.0/bin/dart',
      isWindows: false,
    );

    expect(dart.executable, '/opt/fvm/versions/3.11.0/bin/dart');
    expect(dart.prefixArguments, isEmpty);
  });

  test('falls back to fvm when Dart is not directly on PATH', () {
    final directory = Directory.systemTemp.createTempSync('repodoc-fvm-');
    addTearDown(() => directory.deleteSync(recursive: true));
    File('${directory.path}/fvm').createSync();

    final dart = DartCli.resolve(
      environment: {'PATH': directory.path},
      resolvedExecutable: '/usr/bin/repodoc',
      isWindows: false,
    );

    expect(dart.executable, 'fvm');
    expect(dart.prefixArguments, ['dart']);
  });

  test('reports how to configure Dart when no launcher is available', () {
    expect(
      () => DartCli.resolve(
        environment: const {'PATH': ''},
        resolvedExecutable: '/usr/bin/repodoc',
        isWindows: false,
      ),
      throwsA(
        isA<StateError>().having(
          (error) => error.message,
          'message',
          contains('PULUMI_DART_EXECUTABLE'),
        ),
      ),
    );
  });
}
