import 'dart:io';

final _dependencyPattern = RegExp(
  r'^(\s+)([A-Za-z0-9_-]+):\s*([^#\s][^#]*?)(\s*(?:#.*)?)$',
);

Map<String, String> readPulumiProviderDependencyConstraints(File pubspec) {
  if (!pubspec.existsSync()) return const {};

  final constraints = <String, String>{};
  var inDependencies = false;
  for (final line in pubspec.readAsLinesSync()) {
    if (!line.startsWith(RegExp(r'\s'))) {
      inDependencies = line.trim() == 'dependencies:';
      continue;
    }
    if (!inDependencies) continue;

    final match = _dependencyPattern.firstMatch(line);
    final name = match?.group(2);
    if (name != null && name.startsWith('pulumi_')) {
      constraints[name] = match!.group(3)!.trim();
    }
  }
  return constraints;
}

void preservePulumiProviderDependencyConstraints(
  File pubspec,
  Map<String, String> constraints,
) {
  if (!pubspec.existsSync() || constraints.isEmpty) return;

  final lines = pubspec.readAsLinesSync();
  var inDependencies = false;
  var changed = false;
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (!line.startsWith(RegExp(r'\s'))) {
      inDependencies = line.trim() == 'dependencies:';
      continue;
    }
    if (!inDependencies) continue;

    final match = _dependencyPattern.firstMatch(line);
    final constraint = constraints[match?.group(2)];
    if (match == null || constraint == null) continue;

    final replacement =
        '${match.group(1)}${match.group(2)}: '
        '$constraint${match.group(4)}';
    if (replacement != line) {
      lines[i] = replacement;
      changed = true;
    }
  }

  if (changed) pubspec.writeAsStringSync('${lines.join('\n')}\n');
}
