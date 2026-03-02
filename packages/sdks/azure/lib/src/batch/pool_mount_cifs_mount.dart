// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolMountCifsMount {
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String>? mountOptions;
  /// The password to use for authentication against the CIFS file system.
  final pulumi.Input<String> password;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final pulumi.Input<String> relativeMountPath;
  /// The URI of the file system to mount.
  final pulumi.Input<String> source;
  /// The user to use for authentication against the CIFS file system.
  final pulumi.Input<String> userName;

  /// Creates a new [PoolMountCifsMount].
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [password] The password to use for authentication against the CIFS file system.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  /// [source] The URI of the file system to mount.
  /// [userName] The user to use for authentication against the CIFS file system.
  PoolMountCifsMount({
    this.mountOptions,
    required this.password,
    required this.relativeMountPath,
    required this.source,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'password': password,
      'relativeMountPath': relativeMountPath,
      'source': source,
      'userName': userName,
    };
  }

  factory PoolMountCifsMount.fromMap(Map<String, dynamic> map) {
    return PoolMountCifsMount(
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions']! as String).input(),
      password: (map['password'] as String).input(),
      relativeMountPath: (map['relativeMountPath'] as String).input(),
      source: (map['source'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

