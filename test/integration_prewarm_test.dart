import 'dart:io';

import 'package:test/test.dart';

import 'package:repodoc/src/commands/integration/integration_prewarm_impl.dart';

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

  test('discovers a named initial step without classifying its edit names', () {
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
    expect(
      candidates.single.entryPoint,
      'bin/component_resource_hooks_dart.dart',
    );
  });

  test('discovers an ordinary project', () {
    _writeProject(root, 'empty', 'emptydart');

    final candidates = discoverPrewarmCandidates(root);

    expect(candidates, hasLength(1));
    expect(candidates.single.entryPoint, 'bin/emptydart.dart');
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
