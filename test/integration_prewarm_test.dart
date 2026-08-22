import 'dart:io';

import 'package:test/test.dart';

import '../tool/src/integration_prewarm_impl.dart';

void main() {
  late Directory root;

  setUp(() {
    root = Directory.systemTemp.createTempSync('pulumi-dart-prewarm-test-');
  });

  tearDown(() {
    if (root.existsSync()) {
      root.deleteSync(recursive: true);
    }
  });

  test('step project with sibling edit is not safe to override', () {
    _writeProject(root, 'program_error/step1', 'program_error_dart');
    _writeDartFile(root, 'program_error/step2/bin/program_error_dart.dart');

    final candidates = discoverPrewarmCandidates(root);

    expect(candidates, hasLength(1));
    expect(candidates.single.safeToOverride, isFalse);
  });

  test('named step project with sibling edits is not safe to override', () {
    _writeProject(
      root,
      'component_resource_hooks/step1-create',
      'component_resource_hooks_dart',
    );
    _writeDartFile(
      root,
      'component_resource_hooks/step2-update/bin/component_resource_hooks_dart.dart',
    );

    final candidates = discoverPrewarmCandidates(root);

    expect(candidates, hasLength(1));
    expect(candidates.single.safeToOverride, isFalse);
  });

  test('ordinary project remains safe to override', () {
    _writeProject(root, 'empty', 'emptydart');

    final candidates = discoverPrewarmCandidates(root);

    expect(candidates, hasLength(1));
    expect(candidates.single.safeToOverride, isTrue);
  });
}

void _writeProject(Directory root, String relative, String packageName) {
  final directory = Directory('${root.path}/$relative')
    ..createSync(recursive: true);
  File('${directory.path}/Pulumi.yaml').writeAsStringSync('''
name: $packageName
runtime: dart
''');
  File('${directory.path}/pubspec.yaml').writeAsStringSync('''
name: $packageName
environment:
  sdk: ^3.11.0
''');
  _writeDartFile(root, '$relative/bin/$packageName.dart');
}

void _writeDartFile(Directory root, String relative) {
  final file = File('${root.path}/$relative');
  file.parent.createSync(recursive: true);
  file.writeAsStringSync('void main() {}\n');
}
