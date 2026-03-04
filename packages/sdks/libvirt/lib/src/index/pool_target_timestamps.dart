// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolTargetTimestamps {
  /// Configures the last access time for the storage pool target.
  final pulumi.Input<String> atime;

  /// Sets the last metadata change time for the storage pool target.
  final pulumi.Input<String> ctime;

  /// Specifies the last modification time for the storage pool target.
  final pulumi.Input<String> mtime;

  /// Creates a new [PoolTargetTimestamps].
  /// [atime] Configures the last access time for the storage pool target.
  /// [ctime] Sets the last metadata change time for the storage pool target.
  /// [mtime] Specifies the last modification time for the storage pool target.
  PoolTargetTimestamps({
    required this.atime,
    required this.ctime,
    required this.mtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'atime': atime, 'ctime': ctime, 'mtime': mtime};
  }

  factory PoolTargetTimestamps.fromMap(Map<String, dynamic> map) {
    return PoolTargetTimestamps(
      atime: pulumi.Input.fromValue(map['atime'] as String),
      ctime: pulumi.Input.fromValue(map['ctime'] as String),
      mtime: pulumi.Input.fromValue(map['mtime'] as String),
    );
  }
}
