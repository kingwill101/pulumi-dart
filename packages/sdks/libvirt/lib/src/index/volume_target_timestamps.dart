// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTargetTimestamps {
  /// Sets the last access time timestamp for the storage volume target.
  final pulumi.Input<String> atime;

  /// Specifies the last status change time for the storage volume target.
  final pulumi.Input<String> ctime;

  /// Sets the last modification time for the storage volume target.
  final pulumi.Input<String> mtime;

  /// Creates a new [VolumeTargetTimestamps].
  /// [atime] Sets the last access time timestamp for the storage volume target.
  /// [ctime] Specifies the last status change time for the storage volume target.
  /// [mtime] Sets the last modification time for the storage volume target.
  VolumeTargetTimestamps({
    required this.atime,
    required this.ctime,
    required this.mtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'atime': atime, 'ctime': ctime, 'mtime': mtime};
  }

  factory VolumeTargetTimestamps.fromMap(Map<String, dynamic> map) {
    return VolumeTargetTimestamps(
      atime: pulumi.Input.fromValue(map['atime'] as String),
      ctime: pulumi.Input.fromValue(map['ctime'] as String),
      mtime: pulumi.Input.fromValue(map['mtime'] as String),
    );
  }
}
