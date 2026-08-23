// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the storage of the tokens if a file system is used.
class FileSystemTokenStore {
  /// The directory in which the tokens will be stored.
  final pulumi.Input<String>? directory;

  /// Creates a new [FileSystemTokenStore].
  /// [directory] The directory in which the tokens will be stored.
  const FileSystemTokenStore({
    this.directory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': ?directory,
    };
  }

  factory FileSystemTokenStore.fromMap(Map<String, dynamic> map) {
    return FileSystemTokenStore(
      directory: (() { final guardedValue = map['directory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
