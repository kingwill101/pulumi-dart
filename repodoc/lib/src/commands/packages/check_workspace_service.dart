import 'dart:io';

import '../../infrastructure/task_tooling.dart';

void main() {
  final repoRoot = findRepoRoot();
  final rootPubspec = File(joinPath([repoRoot.path, 'pubspec.yaml']));
  if (!rootPubspec.existsSync()) {
    stderr.writeln('Missing workspace pubspec: ${rootPubspec.path}');
    exit(1);
  }

  final rootLines = rootPubspec.readAsLinesSync();
  final resolutionRegex = RegExp(r'^\s*resolution:\s*');
  if (rootLines.any((line) => resolutionRegex.hasMatch(line))) {
    stderr.writeln(
      'Invalid root workspace pubspec: pubspec.yaml must not set resolution.',
    );
    exit(1);
  }

  final workspaceMembers = _expandWorkspaceMembers(
    repoRoot,
    _parseWorkspaceMembers(rootLines),
  );
  if (workspaceMembers.isEmpty) {
    stderr.writeln('No workspace members found in pubspec.yaml');
    exit(1);
  }

  var hasErrors = false;
  final seen = <String>{};
  final memberResolutionRegex = RegExp(
    '^\\s*resolution:\\s*[\'"]?workspace[\'"]?\\s*\$',
  );

  for (final member in workspaceMembers) {
    if (!seen.add(member)) {
      stderr.writeln('Duplicate workspace member in pubspec.yaml: $member');
      hasErrors = true;
      continue;
    }

    final memberPubspec = File(
      joinPath([repoRoot.path, member, 'pubspec.yaml']),
    );
    if (!memberPubspec.existsSync()) {
      stderr.writeln(
        'Workspace member is missing pubspec: $member/pubspec.yaml',
      );
      hasErrors = true;
      continue;
    }

    final memberLines = memberPubspec.readAsLinesSync();
    final hasWorkspaceResolution = memberLines.any(
      (line) => memberResolutionRegex.hasMatch(line),
    );
    if (!hasWorkspaceResolution) {
      stderr.writeln(
        'Workspace member must set resolution: workspace -> '
        '$member/pubspec.yaml',
      );
      hasErrors = true;
    }
  }

  if (hasErrors) {
    exit(1);
  }

  stdout.writeln(
    'Workspace pubspec checks passed for ${workspaceMembers.length} members.',
  );
}

List<String> _expandWorkspaceMembers(Directory repoRoot, List<String> entries) {
  final members = <String>[];
  for (final entry in entries) {
    if (!entry.endsWith('/**')) {
      members.add(entry);
      continue;
    }

    final searchRoot = Directory(
      joinPath([repoRoot.path, entry.substring(0, entry.length - 3)]),
    );
    if (!searchRoot.existsSync()) {
      members.add(entry);
      continue;
    }

    final discovered =
        searchRoot
            .listSync(recursive: true, followLinks: false)
            .whereType<File>()
            .where((file) => file.path.endsWith('/pubspec.yaml'))
            .map((file) => relativePath(repoRoot.path, file.parent.path))
            .toList()
          ..sort();
    members.addAll(discovered);
  }
  return members;
}

List<String> _parseWorkspaceMembers(List<String> lines) {
  final members = <String>[];
  var inWorkspace = false;

  for (final rawLine in lines) {
    final line = rawLine.replaceAll('\r', '');
    if (!inWorkspace) {
      if (line.trim() == 'workspace:') {
        inWorkspace = true;
      }
      continue;
    }

    final trimmedLeft = line.trimLeft();
    if (trimmedLeft.isEmpty || trimmedLeft.startsWith('#')) {
      continue;
    }

    final isTopLevel = !line.startsWith(' ') && !line.startsWith('\t');
    if (isTopLevel) {
      break;
    }

    final entryMatch = RegExp(r'^\s*-\s*(.+?)\s*$').firstMatch(line);
    if (entryMatch == null) {
      continue;
    }

    var entry = entryMatch.group(1) ?? '';
    final commentIndex = entry.indexOf('#');
    if (commentIndex >= 0) {
      entry = entry.substring(0, commentIndex);
    }
    entry = entry.trim();
    if (entry.isNotEmpty) {
      members.add(entry);
    }
  }

  return members;
}
