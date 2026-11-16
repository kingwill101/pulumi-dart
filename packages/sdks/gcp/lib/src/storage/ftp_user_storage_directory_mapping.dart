// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FtpUserStorageDirectoryMapping {
  /// The Cloud Storage bucket name. Omit the gs://.
  final pulumi.Input<String?>? bucket;
  /// The path of a folder within the bucket to set as the root directory for this directory mapping.
  final pulumi.Input<String?>? bucketPrefix;
  /// The directory path in the virtual file system.
  final pulumi.Input<String?>? directory;
  /// The access level for the directory. For read-only access, set this value to READ_ONLY. For read and write access, set this value to READ_WRITE.
  /// Possible values are: `READ_ONLY`, `READ_WRITE`.
  final pulumi.Input<String?>? permission;

  /// Creates a new [FtpUserStorageDirectoryMapping].
  /// [bucket] The Cloud Storage bucket name. Omit the gs://.
  /// [bucketPrefix] The path of a folder within the bucket to set as the root directory for this directory mapping.
  /// [directory] The directory path in the virtual file system.
  /// [permission] The access level for the directory. For read-only access, set this value to READ_ONLY. For read and write access, set this value to READ_WRITE.
  const FtpUserStorageDirectoryMapping({
    this.bucket,
    this.bucketPrefix,
    this.directory,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'bucketPrefix': ?bucketPrefix,
      'directory': ?directory,
      'permission': ?permission,
    };
  }

  factory FtpUserStorageDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return FtpUserStorageDirectoryMapping(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directory: (() { final guardedValue = map['directory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
