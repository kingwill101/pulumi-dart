import 'dart:io';

import 'package:repodoc/src/commands/packages/package_version.dart';
import 'package:test/test.dart';

void main() {
  late Directory temporaryDirectory;

  setUp(() {
    temporaryDirectory = Directory.systemTemp.createTempSync(
      'repodoc-package-version-',
    );
  });

  tearDown(() => temporaryDirectory.deleteSync(recursive: true));

  test('reads a package version without including comments', () {
    final pubspec = File('${temporaryDirectory.path}/pubspec.yaml')
      ..writeAsStringSync('name: example\nversion: 0.0.22 # generated\n');

    expect(readPackageVersion(pubspec), '0.0.22');
  });

  test('returns null for a missing version or pubspec', () {
    final pubspec = File('${temporaryDirectory.path}/pubspec.yaml')
      ..writeAsStringSync('name: example\n');

    expect(readPackageVersion(pubspec), isNull);
    expect(
      readPackageVersion(File('${temporaryDirectory.path}/missing.yaml')),
      isNull,
    );
  });
}
