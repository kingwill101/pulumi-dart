// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in an archive file in Google Cloud Storage.
class StorageSourceResponseCloudfunctionsV2alpha {
  /// Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String> bucket;
  /// Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final pulumi.Input<String> generation;
  /// Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build.
  final pulumi.Input<String> object_;

  /// Creates a new [StorageSourceResponseCloudfunctionsV2alpha].
  /// [bucket] Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  /// [object_] Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build.
  const StorageSourceResponseCloudfunctionsV2alpha({
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

  factory StorageSourceResponseCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return StorageSourceResponseCloudfunctionsV2alpha(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

