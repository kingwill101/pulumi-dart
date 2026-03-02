// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StorageSource describes the location of the source in an archive file in Google Cloud Storage.
class StorageSourceResponse {
  /// Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String> bucket;
  /// Google Cloud Storage generation for the object.
  final pulumi.Input<String> generation;
  /// Google Cloud Storage object containing source.
  final pulumi.Input<String> object;

  /// Creates a new [StorageSourceResponse].
  /// [bucket] Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Google Cloud Storage generation for the object.
  /// [object] Google Cloud Storage object containing source.
  StorageSourceResponse({
    required this.bucket,
    required this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': generation,
      'object': object,
    };
  }

  factory StorageSourceResponse.fromMap(Map<String, dynamic> map) {
    return StorageSourceResponse(
      bucket: (map['bucket'] as String).input(),
      generation: (map['generation'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

