// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the storage of the tokens if a file system is used.
class FileSystemTokenStoreResponse {
  /// The directory in which the tokens will be stored.
  final pulumi.Input<String>? directory;

  /// Creates a new [FileSystemTokenStoreResponse].
  /// [directory] The directory in which the tokens will be stored.
  FileSystemTokenStoreResponse({
    this.directory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': ?directory,
    };
  }

  factory FileSystemTokenStoreResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemTokenStoreResponse(
      directory: map['directory'] == null ? null : (map['directory']! as String).input(),
    );
  }
}

