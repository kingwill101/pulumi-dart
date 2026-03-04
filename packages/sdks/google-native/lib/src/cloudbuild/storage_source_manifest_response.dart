// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
class StorageSourceManifestResponse {
  /// Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String> bucket;

  /// Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final pulumi.Input<String> generation;

  /// Cloud Storage object containing the source manifest. This object must be a JSON file.
  final pulumi.Input<String> object_;

  /// Creates a new [StorageSourceManifestResponse].
  /// [bucket] Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  /// [object_] Cloud Storage object containing the source manifest. This object must be a JSON file.
  StorageSourceManifestResponse({
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

  factory StorageSourceManifestResponse.fromMap(Map<String, dynamic> map) {
    return StorageSourceManifestResponse(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
