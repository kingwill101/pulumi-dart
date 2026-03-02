// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in an archive file in Cloud Storage.
class StorageSourceResponse {
  /// Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String> bucket;
  /// Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final pulumi.Input<String> generation;
  /// Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  final pulumi.Input<String> object;
  /// Optional. Option to specify the tool to fetch the source file for the build.
  final pulumi.Input<String> sourceFetcher;

  /// Creates a new [StorageSourceResponse].
  /// [bucket] Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  /// [object] Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  /// [sourceFetcher] Optional. Option to specify the tool to fetch the source file for the build.
  StorageSourceResponse({
    required this.bucket,
    required this.generation,
    required this.object,
    required this.sourceFetcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': generation,
      'object': object,
      'sourceFetcher': sourceFetcher,
    };
  }

  factory StorageSourceResponse.fromMap(Map<String, dynamic> map) {
    return StorageSourceResponse(
      bucket: (map['bucket'] as String).input(),
      generation: (map['generation'] as String).input(),
      object: (map['object'] as String).input(),
      sourceFetcher: (map['sourceFetcher'] as String).input(),
    );
  }
}

