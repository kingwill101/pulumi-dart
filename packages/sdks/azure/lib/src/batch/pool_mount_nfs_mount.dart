// ignore_for_file: unused_element, unnecessary_cast


class PoolMountNfsMount {
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final String? mountOptions;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final String relativeMountPath;
  /// The URI of the file system to mount.
  final String source;

  /// Creates a new [PoolMountNfsMount].
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  /// [source] The URI of the file system to mount.
  PoolMountNfsMount({
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
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      relativeMountPath: map['relativeMountPath'] as String,
      source: map['source'] as String,
    );
  }
}

