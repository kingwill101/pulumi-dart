// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageDefaultBucketBucket {
  /// (Output)
  /// The last segment of bucket.name.
  final pulumi.Input<String?>? bucketId;
  /// (Output)
  /// The resource name of the bucket in the format
  /// projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  final pulumi.Input<String?>? name;

  /// Creates a new [StorageDefaultBucketBucket].
  /// [bucketId] (Output)
  /// [name] (Output)
  const StorageDefaultBucketBucket({
    this.bucketId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'name': ?name,
    };
  }

  factory StorageDefaultBucketBucket.fromMap(Map<String, dynamic> map) {
    return StorageDefaultBucketBucket(
      bucketId: (() { final guardedValue = map['bucketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
