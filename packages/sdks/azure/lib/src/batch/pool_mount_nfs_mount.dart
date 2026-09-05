// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolMountNfsMount {
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String?>? mountOptions;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final pulumi.Input<String> relativeMountPath;
  /// The URI of the file system to mount.
  final pulumi.Input<String> source;

  /// Creates a new [PoolMountNfsMount].
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  /// [source] The URI of the file system to mount.
  const PoolMountNfsMount({
    this.mountOptions,
    required this.relativeMountPath,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'relativeMountPath': relativeMountPath,
      'source': source,
    };
  }

  factory PoolMountNfsMount.fromMap(Map<String, dynamic> map) {
    return PoolMountNfsMount(
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativeMountPath: pulumi.Input.fromValue(map['relativeMountPath'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
