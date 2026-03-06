// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceDir {
  /// Provides the path to the directory that serves as a source for the storage pool.
  final pulumi.Input<String> path;

  /// Creates a new [PoolSourceDir].
  /// [path] Provides the path to the directory that serves as a source for the storage pool.
  const PoolSourceDir({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory PoolSourceDir.fromMap(Map<String, dynamic> map) {
    return PoolSourceDir(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

