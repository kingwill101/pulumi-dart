// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StorageSource describes the location of the source in an archive file in Google Cloud Storage.
class StorageSource {
  /// Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  final pulumi.Input<String>? bucket;

  /// Google Cloud Storage generation for the object.
  final pulumi.Input<String>? generation;

  /// Google Cloud Storage object containing source.
  final pulumi.Input<String>? object_;

  /// Creates a new [StorageSource].
  /// [bucket] Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  /// [generation] Google Cloud Storage generation for the object.
  /// [object_] Google Cloud Storage object containing source.
  StorageSource({this.bucket, this.generation, this.object_});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object_,
    };
  }

  factory StorageSource.fromMap(Map<String, dynamic> map) {
    return StorageSource(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      generation: (() {
        final guardedValue = map['generation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      object_: (() {
        final guardedValue = map['object'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
