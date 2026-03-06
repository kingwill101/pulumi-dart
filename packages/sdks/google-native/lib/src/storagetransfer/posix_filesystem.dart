// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A POSIX filesystem resource.
class PosixFilesystem {
  /// Root directory path to the filesystem.
  final pulumi.Input<String>? rootDirectory;

  /// Creates a new [PosixFilesystem].
  /// [rootDirectory] Root directory path to the filesystem.
  const PosixFilesystem({
    this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootDirectory': ?rootDirectory,
    };
  }

  factory PosixFilesystem.fromMap(Map<String, dynamic> map) {
    return PosixFilesystem(
      rootDirectory: (() { final guardedValue = map['rootDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

