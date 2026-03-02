// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spaces_bucket_object_get_spaces_bucket_object_args_doc}
/// Arguments for getSpacesBucketObject.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_bucket_object_get_spaces_bucket_object_args_doc}
class GetSpacesBucketObjectArgs {
  /// The name of the bucket to read the object from.
  final pulumi.Input<String> bucket;
  /// The full path to the object inside the bucket
  final pulumi.Input<String> key;
  final pulumi.Input<String>? range;
  /// The slug of the region where the bucket is stored.
  final pulumi.Input<String> region;
  /// Specific version ID of the object returned (defaults to latest version)
  final pulumi.Input<String>? versionId;

  /// Creates a new [GetSpacesBucketObjectArgs].
  /// [bucket] The name of the bucket to read the object from.
  /// [key] The full path to the object inside the bucket
  /// [range] Optional.
  /// [region] The slug of the region where the bucket is stored.
  /// [versionId] Specific version ID of the object returned (defaults to latest version)
  GetSpacesBucketObjectArgs({
    required this.bucket,
    required this.key,
    this.range,
    required this.region,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'range': ?range,
      'region': region,
      'versionId': ?versionId,
    };
  }

  factory GetSpacesBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketObjectArgs(
      bucket: (map['bucket'] as String).input(),
      key: (map['key'] as String).input(),
      range: map['range'] == null ? null : (map['range'] as String).input(),
      region: (map['region'] as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId'] as String).input(),
    );
  }
}

