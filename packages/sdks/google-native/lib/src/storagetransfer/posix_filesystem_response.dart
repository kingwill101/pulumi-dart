// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A POSIX filesystem resource.
class PosixFilesystemResponse {
  /// Root directory path to the filesystem.
  final pulumi.Input<String> rootDirectory;

  /// Creates a new [PosixFilesystemResponse].
  /// [rootDirectory] Root directory path to the filesystem.
  const PosixFilesystemResponse({
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootDirectory': rootDirectory,
    };
  }

  factory PosixFilesystemResponse.fromMap(Map<String, dynamic> map) {
    return PosixFilesystemResponse(
      rootDirectory: pulumi.Input.fromValue(map['rootDirectory'] as String),
    );
  }
}

