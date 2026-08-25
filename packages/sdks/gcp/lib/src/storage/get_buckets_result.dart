// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_buckets_bucket.dart';

/// Result data returned by getBuckets.
class GetBucketsResult {
  /// A list of all retrieved GCS buckets. Structure is defined below.
  final List<GetBucketsBucket>? buckets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? prefix;
  final String? project;

  /// Creates a new [GetBucketsResult].
  /// [buckets] A list of all retrieved GCS buckets. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [prefix] Optional.
  /// [project] Optional.
  const GetBucketsResult({
    this.buckets,
    this.id,
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?(() { final guardedValue = buckets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketsBucket, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'prefix': ?prefix,
      'project': ?project,
    };
  }

  factory GetBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketsResult(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketsBucket>(guardedValue, (value) => GetBucketsBucket.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
