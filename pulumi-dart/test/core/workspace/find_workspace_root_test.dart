import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pulumi/src/workspace.dart';
import 'package:test/test.dart';

void _writeFile(String path, String contents) {
  final file = File(path);
  file.parent.createSync(recursive: true);
  file.writeAsStringSync(contents);
}

void main() {
  group('findWorkspaceRoot', () {
    late Directory tempRoot;

    setUp(() {
      tempRoot = Directory.systemTemp.createTempSync('pulumi-dart-workspace-');
    });

    tearDown(() {
      if (tempRoot.existsSync()) {
        tempRoot.deleteSync(recursive: true);
      }
    });

    test('finds the root of a workspace', () {
      final workspaceRoot = p.join(tempRoot.path, 'workspace');
      final projectDir = p.join(workspaceRoot, 'project');
      _writeFile(
        p.join(workspaceRoot, 'package.json'),
        '{"private":true,"workspaces":["project"]}',
      );
      _writeFile(p.join(projectDir, 'package.json'), '{"name":"project"}');

      final root = findWorkspaceRoot(projectDir);
      expect(root, equals(workspaceRoot));
    });

    test('returns null when not in a workspace', () {
      final nestedRoot = p.join(tempRoot.path, 'nested');
      final projectDir = p.join(nestedRoot, 'project');
      _writeFile(p.join(projectDir, 'package.json'), '{"name":"project"}');

      final root = findWorkspaceRoot(projectDir);
      expect(root, isNull);
    });

    test('finds the root using extended workspaces declaration', () {
      final workspaceRoot = p.join(tempRoot.path, 'workspace-extended');
      final projectDir = p.join(workspaceRoot, 'project');
      _writeFile(
        p.join(workspaceRoot, 'package.json'),
        '{"private":true,"workspaces":{"packages":["project"]}}',
      );
      _writeFile(p.join(projectDir, 'package.json'), '{"name":"project"}');

      final root = findWorkspaceRoot(projectDir);
      expect(root, equals(workspaceRoot));
    });

    test('finds root when started from nested directory', () {
      final workspaceRoot = p.join(tempRoot.path, 'workspace-nested');
      final projectDir = p.join(workspaceRoot, 'project');
      final nestedDir = p.join(projectDir, 'dist');
      _writeFile(
        p.join(workspaceRoot, 'package.json'),
        '{"private":true,"workspaces":["project"]}',
      );
      _writeFile(p.join(projectDir, 'package.json'), '{"name":"project"}');
      Directory(nestedDir).createSync(recursive: true);

      final root = findWorkspaceRoot(nestedDir);
      expect(root, equals(workspaceRoot));
    });

    test('finds root when starting path is a file', () {
      final workspaceRoot = p.join(tempRoot.path, 'workspace-file');
      final projectDir = p.join(workspaceRoot, 'project');
      final filePath = p.join(projectDir, 'dist', 'index.js');
      _writeFile(
        p.join(workspaceRoot, 'package.json'),
        '{"private":true,"workspaces":["project"]}',
      );
      _writeFile(p.join(projectDir, 'package.json'), '{"name":"project"}');
      _writeFile(filePath, 'console.log("hello");');

      final root = findWorkspaceRoot(filePath);
      expect(root, equals(workspaceRoot));
    });
  });
}
