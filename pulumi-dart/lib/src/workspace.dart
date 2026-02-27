import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

String? _searchUp(String startDir, String fileToFind) {
  var currentDir = p.normalize(startDir);
  while (true) {
    if (File(p.join(currentDir, fileToFind)).existsSync()) {
      return currentDir;
    }
    final parentDir = p.dirname(currentDir);
    if (parentDir == currentDir) {
      return null;
    }
    currentDir = parentDir;
  }
}

List<String> _parseWorkspaces(String packageJsonPath) {
  final packageJson = jsonDecode(File(packageJsonPath).readAsStringSync());
  final workspaces = packageJson['workspaces'];

  if (workspaces is List) {
    return workspaces.whereType<String>().toList(growable: false);
  }
  if (workspaces is Map && workspaces['packages'] is List) {
    return (workspaces['packages'] as List).whereType<String>().toList(
      growable: false,
    );
  }
  return const <String>[];
}

bool _workspacePatternMatches(String pattern, String relativePath) {
  final normalizedPattern = p.normalize(pattern).replaceAll('\\', '/');
  final normalizedRelative = p.normalize(relativePath).replaceAll('\\', '/');

  final escaped = RegExp.escape(normalizedPattern);
  final regex = RegExp(
    '^${escaped.replaceAll(r'\*\*', '___DOUBLE_STAR___').replaceAll(r'\*', '[^/]*').replaceAll('___DOUBLE_STAR___', '.*')}\$',
  );
  return regex.hasMatch(normalizedRelative);
}

/// Finds the root directory of a package.json workspace that contains
/// [startingPath]. Returns `null` when no containing workspace is found.
String? findWorkspaceRoot(String startingPath) {
  var start = startingPath;
  final type = FileSystemEntity.typeSync(startingPath);
  if (type == FileSystemEntityType.file) {
    start = p.dirname(startingPath);
  }

  final packageJsonDir = _searchUp(start, 'package.json');
  if (packageJsonDir == null) {
    return null;
  }

  var currentDir = packageJsonDir;
  while (true) {
    final packageJsonPath = p.join(currentDir, 'package.json');
    if (File(packageJsonPath).existsSync()) {
      final workspaces = _parseWorkspaces(packageJsonPath);
      final rel = p.relative(packageJsonDir, from: currentDir);
      for (final workspace in workspaces) {
        if (_workspacePatternMatches(workspace, rel)) {
          return currentDir;
        }
      }
    }

    final parentDir = p.dirname(currentDir);
    if (parentDir == currentDir) {
      break;
    }
    currentDir = parentDir;
  }

  return null;
}
