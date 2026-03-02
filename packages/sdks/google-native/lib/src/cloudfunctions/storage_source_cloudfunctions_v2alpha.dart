// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in an archive file in Google Cloud Storage.
class StorageSourceCloudfunctionsV2alpha {
  /// Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String>? bucket;
  /// Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final pulumi.Input<String>? generation;
  /// Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build.
  final pulumi.Input<String>? object;

  /// Creates a new [StorageSourceCloudfunctionsV2alpha].
  /// [bucket] Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  /// [object] Google Cloud Storage object containing the source. This object must be a gzipped archive file (`.tar.gz`) containing source to build.
  StorageSourceCloudfunctionsV2alpha({
    this.bucket,
    this.generation,
    this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object,
    };
  }

  factory StorageSourceCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return StorageSourceCloudfunctionsV2alpha(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as String).input(),
      object: map['object'] == null ? null : (map['object'] as String).input(),
    );
  }
}

