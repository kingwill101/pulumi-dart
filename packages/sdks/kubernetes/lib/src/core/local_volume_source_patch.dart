// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Local represents directly-attached storage with node affinity
class LocalVolumeSourcePatch {
  /// fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a filesystem if unspecified.
  final pulumi.Input<String>? fsType;
  /// path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  final pulumi.Input<String>? path;

  /// Creates a new [LocalVolumeSourcePatch].
  /// [fsType] fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a filesystem if unspecified.
  /// [path] path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  LocalVolumeSourcePatch({
    this.fsType,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'path': ?path,
    };
  }

  factory LocalVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return LocalVolumeSourcePatch(
      fsType: map['fsType'] == null ? null : (map['fsType']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

