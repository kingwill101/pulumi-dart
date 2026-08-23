// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StorageSource describes the location of the source in an archive file in Google Cloud Storage.
class StorageSourceResponse {
  /// Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String> bucket;
  /// Google Cloud Storage generation for the object.
  final pulumi.Input<String> generation;
  /// Google Cloud Storage object containing source.
  final pulumi.Input<String> object_;

  /// Creates a new [StorageSourceResponse].
  /// [bucket] Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Google Cloud Storage generation for the object.
  /// [object_] Google Cloud Storage object containing source.
  const StorageSourceResponse({
    required this.bucket,
    required this.generation,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': generation,
      'object': object_,
    };
  }

  factory StorageSourceResponse.fromMap(Map<String, dynamic> map) {
    return StorageSourceResponse(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
