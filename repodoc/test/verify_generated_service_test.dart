import 'dart:io';

import 'package:repodoc/src/commands/packages/verify_generated_service.dart';
import 'package:test/test.dart';

void main() {
  late Directory repository;

  setUp(() {
    repository = Directory.systemTemp.createTempSync('repodoc-verify-');
    _git(repository, ['init', '--quiet']);
    _git(repository, ['config', 'user.email', 'repodoc@example.test']);
    _git(repository, ['config', 'user.name', 'Repodoc Test']);
    _write(repository, 'packages/example.dart', 'first\n\nsecond\n\n');
    _git(repository, ['add', '.']);
    _git(repository, ['commit', '--quiet', '-m', 'initial']);
  });

  tearDown(() => repository.deleteSync(recursive: true));

  test('allows differences confined to blank lines at EOF', () {
    _write(repository, 'packages/example.dart', 'first\n\nsecond\n');

    final result = GeneratedTreeVerifier(repositoryRoot: repository).verify();

    expect(result.isClean, isTrue);
    expect(result.eofOnlyPaths, ['packages/example.dart']);
  });

  test('rejects internal blank-line drift', () {
    _write(repository, 'packages/example.dart', 'first\nsecond\n\n');

    final result = GeneratedTreeVerifier(repositoryRoot: repository).verify();

    expect(result.isClean, isFalse);
    expect(result.driftPaths, ['packages/example.dart']);
  });

  test('rejects added and deleted generated files', () {
    File('${repository.path}/packages/example.dart').deleteSync();
    _write(repository, 'packages/added.dart', 'new\n');

    final result = GeneratedTreeVerifier(repositoryRoot: repository).verify();

    expect(result.driftPaths, ['packages/added.dart', 'packages/example.dart']);
  });
}

void _write(Directory root, String path, String contents) {
  final file = File('${root.path}/$path')..createSync(recursive: true);
  file.writeAsStringSync(contents);
}

void _git(Directory root, List<String> arguments) {
  final result = Process.runSync('git', ['-C', root.path, ...arguments]);
  if (result.exitCode != 0) {
    throw StateError('git ${arguments.join(' ')} failed: ${result.stderr}');
  }
}
