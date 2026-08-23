// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_contents_bucket_object.dart';

/// Result data returned by getBucketObjectContents.
class GetBucketObjectContentsResult {
  final String bucket;
  /// A list of retrieved object contents contained in the provided GCS bucket. Structure is defined below.
  final List<GetBucketObjectContentsBucketObject> bucketObjects;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? matchGlob;
  final String? prefix;

  /// Creates a new [GetBucketObjectContentsResult].
  /// [bucket] Required.
  /// [bucketObjects] A list of retrieved object contents contained in the provided GCS bucket. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [matchGlob] Optional.
  /// [prefix] Optional.
  const GetBucketObjectContentsResult({
    required this.bucket,
    required this.bucketObjects,
    required this.id,
    this.matchGlob,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketObjects': pulumi.Input.encodeList<GetBucketObjectContentsBucketObject, Map<String, dynamic>>(bucketObjects, (value) => value.toMap()),
      'id': id,
      'matchGlob': ?matchGlob,
      'prefix': ?prefix,
    };
  }

  factory GetBucketObjectContentsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentsResult(
      bucket: map['bucket'] as String,
      bucketObjects: pulumi.Input.decodeList<GetBucketObjectContentsBucketObject>(map['bucketObjects']!, (value) => GetBucketObjectContentsBucketObject.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      matchGlob: (() { final guardedValue = map['matchGlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
