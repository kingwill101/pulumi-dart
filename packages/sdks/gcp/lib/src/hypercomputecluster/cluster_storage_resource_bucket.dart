// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceBucket {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;

  /// Creates a new [ClusterStorageResourceBucket].
  /// [bucket] Name of the bucket.
  const ClusterStorageResourceBucket({
    this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
    };
  }

  factory ClusterStorageResourceBucket.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceBucket(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
