// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_objects_bucket_object.dart';

/// Result data returned by getBucketObjects.
class GetBucketObjectsResult {
  final String? bucket;
  /// A list of retrieved objects contained in the provided GCS bucket. Structure is defined below.
  final List<GetBucketObjectsBucketObject>? bucketObjects;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? matchGlob;
  final String? prefix;

  /// Creates a new [GetBucketObjectsResult].
  /// [bucket] Optional.
  /// [bucketObjects] A list of retrieved objects contained in the provided GCS bucket. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [matchGlob] Optional.
  /// [prefix] Optional.
  const GetBucketObjectsResult({
    this.bucket,
    this.bucketObjects,
    this.id,
    this.matchGlob,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'bucketObjects': ?(() { final guardedValue = bucketObjects; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectsBucketObject, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'matchGlob': ?matchGlob,
      'prefix': ?prefix,
    };
  }

  factory GetBucketObjectsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketObjects: (() { final guardedValue = map['bucketObjects']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectsBucketObject>(guardedValue, (value) => GetBucketObjectsBucketObject.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchGlob: (() { final guardedValue = map['matchGlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
