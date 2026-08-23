// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigExistingBucket {
  /// Name of the Cloud Storage bucket to import.
  final pulumi.Input<String> bucket;

  /// Creates a new [ClusterStorageResourceConfigExistingBucket].
  /// [bucket] Name of the Cloud Storage bucket to import.
  const ClusterStorageResourceConfigExistingBucket({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
    };
  }

  factory ClusterStorageResourceConfigExistingBucket.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigExistingBucket(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
    );
  }
}
