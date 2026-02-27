import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pulumi/src/workspace.dart';
import 'package:test/test.dart';

void main() {
  group('local_workspace parity', () {
    late Directory root;

    setUp(() async {
      root = await Directory.systemTemp.createTemp('pulumi-local-workspace-');
    });

    tearDown(() async {
      if (await root.exists()) {
        await root.delete(recursive: true);
      }
    });

    test(
      'findWorkspaceRoot resolves workspace root from local package path',
      () {
        final workspaceRoot = p.join(root.path, 'workspace');
        final projectDir = p.join(workspaceRoot, 'project');
        Directory(projectDir).createSync(recursive: true);
        File(
          p.join(workspaceRoot, 'package.json'),
        ).writeAsStringSync('{"private":true,"workspaces":["project"]}');
        File(
          p.join(projectDir, 'package.json'),
        ).writeAsStringSync('{"name":"project"}');

        final found = findWorkspaceRoot(projectDir);
        expect(found, equals(workspaceRoot));
      },
    );
  });
}
