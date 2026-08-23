// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentStorageConfig {
  /// Optional. Name of an existing Cloud Storage bucket to be used by the environment.
  final pulumi.Input<String> bucket;

  /// Creates a new [EnvironmentStorageConfig].
  /// [bucket] Optional. Name of an existing Cloud Storage bucket to be used by the environment.
  const EnvironmentStorageConfig({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
    };
  }

  factory EnvironmentStorageConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfig(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
    );
  }
}
