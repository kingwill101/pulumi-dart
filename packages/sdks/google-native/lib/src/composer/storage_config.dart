// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for data storage in the environment.
class StorageConfig {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final pulumi.Input<String>? bucket;

  /// Creates a new [StorageConfig].
  /// [bucket] Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  const StorageConfig({
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
    };
  }

  factory StorageConfig.fromMap(Map<String, dynamic> map) {
    return StorageConfig(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

