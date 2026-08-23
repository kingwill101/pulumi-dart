import 'dart:io';

Directory findRepoRoot({
  Directory? start,
  List<String> markers = const [
    'pubspec.yaml',
    'repodoc',
    'pulumi-language-dart',
  ],
}) {
  var current = (start ?? Directory.current).absolute;
  while (true) {
    final hasMarkers = markers.every((marker) {
      final markerPath = joinPath([current.path, marker]);
      return FileSystemEntity.typeSync(markerPath) !=
          FileSystemEntityType.notFound;
    });
    if (hasMarkers) {
      return current;
    }

    final parent = current.parent;
    if (parent.path == current.path) {
      stderr.writeln(
        'Unable to locate repository root from '
        '${(start ?? Directory.current).absolute.path}.',
      );
      exit(66);
    }
    current = parent;
  }
}

String envOrDefault(String key, String fallback) {
  final value = Platform.environment[key];
  if (value == null || value.trim().isEmpty) {
    return fallback;
  }
  return value.trim();
}

bool envBool(String key) {
  final value = Platform.environment[key]?.trim().toLowerCase();
  return value == 'true' || value == '1' || value == 'yes';
}

String joinPath(List<String> segments) {
  final normalized = segments.where((segment) => segment.isNotEmpty).toList();
  if (normalized.isEmpty) {
    return '';
  }

  var path = normalized.first;
  for (final segment in normalized.skip(1)) {
    if (path.endsWith('/') || path.endsWith('\\')) {
      path += segment;
    } else {
      path = '$path/$segment';
    }
  }
  return path;
}

String relativePath(String root, String fullPath) {
  if (fullPath == root) {
    return '';
  }
  final prefix = root.endsWith('/') ? root : '$root/';
  if (fullPath.startsWith(prefix)) {
    return fullPath.substring(prefix.length);
  }
  return fullPath;
}
