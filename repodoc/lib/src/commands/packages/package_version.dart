import 'dart:io';

String? readPackageVersion(File pubspec) {
  if (!pubspec.existsSync()) return null;

  final versionPattern = RegExp(r'^version:\s*([^\s#]+)(?:\s+#.*)?$');
  for (final line in pubspec.readAsLinesSync()) {
    final match = versionPattern.firstMatch(line.trim());
    final version = match?.group(1)?.trim();
    if (version != null && version.isNotEmpty) return version;
  }
  return null;
}
