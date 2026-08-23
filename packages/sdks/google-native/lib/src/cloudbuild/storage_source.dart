// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_source_source_fetcher.dart';

/// Location of the source in an archive file in Cloud Storage.
class StorageSource {
  /// Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String>? bucket;
  /// Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  final pulumi.Input<String>? generation;
  /// Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  final pulumi.Input<String>? object_;
  /// Optional. Option to specify the tool to fetch the source file for the build.
  final pulumi.Input<StorageSourceSourceFetcher>? sourceFetcher;

  /// Creates a new [StorageSource].
  /// [bucket] Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  /// [object_] Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  /// [sourceFetcher] Optional. Option to specify the tool to fetch the source file for the build.
  const StorageSource({
    this.bucket,
    this.generation,
    this.object_,
    this.sourceFetcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object_,
      'sourceFetcher': ?pulumi.Input.mapOptionalInputValue<StorageSourceSourceFetcher, String>(sourceFetcher, (value) => value.wireValue),
    };
  }

  factory StorageSource.fromMap(Map<String, dynamic> map) {
    return StorageSource(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFetcher: (() { final guardedValue = map['sourceFetcher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSourceSourceFetcher.fromValue(guardedValue as String)); })(),
    );
  }
}
