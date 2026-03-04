// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for data storage in the environment.
class StorageConfigResponse {
  /// Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  final pulumi.Input<String> bucket;

  /// Creates a new [StorageConfigResponse].
  /// [bucket] Optional. The name of the Cloud Storage bucket used by the environment. No `gs://` prefix.
  StorageConfigResponse({required this.bucket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket};
  }

  factory StorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigResponse(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
    );
  }
}
