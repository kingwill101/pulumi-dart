import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pulumi/src/workspace.dart';
import 'package:test/test.dart';

void main() {
  group('remote_workspace parity', () {
    late Directory root;

    setUp(() async {
      root = await Directory.systemTemp.createTemp('pulumi-remote-workspace-');
    });

    tearDown(() async {
      if (await root.exists()) {
        await root.delete(recursive: true);
      }
    });

    test('workspace glob patterns resolve nested project roots', () {
      final workspaceRoot = p.join(root.path, 'workspace');
      final nestedProject = p.join(workspaceRoot, 'packages', 'app');
      Directory(nestedProject).createSync(recursive: true);
      File(
        p.join(workspaceRoot, 'package.json'),
      ).writeAsStringSync('{"private":true,"workspaces":["packages/*"]}');
      File(
        p.join(nestedProject, 'package.json'),
      ).writeAsStringSync('{"name":"app"}');

      final found = findWorkspaceRoot(nestedProject);
      expect(found, equals(workspaceRoot));
    });
  });
}
