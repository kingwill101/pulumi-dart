// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for data storage in the environment.
class StorageConfigComposerV1beta1 {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final pulumi.Input<String>? bucket;

  /// Creates a new [StorageConfigComposerV1beta1].
  /// [bucket] Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  const StorageConfigComposerV1beta1({
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
    };
  }

  factory StorageConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageConfigComposerV1beta1(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

