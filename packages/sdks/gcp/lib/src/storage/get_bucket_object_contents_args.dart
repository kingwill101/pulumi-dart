// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_object_contents_get_bucket_object_contents_args_doc}
/// Arguments for getBucketObjectContents.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_object_contents_get_bucket_object_contents_args_doc}
class GetBucketObjectContentsArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;
  /// A glob pattern used to filter results (for example, `foo*bar`).
  final pulumi.Input<String>? matchGlob;
  /// Filter results to include only objects whose names begin with this prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [GetBucketObjectContentsArgs].
  /// [bucket] The name of the containing bucket.
  /// [matchGlob] A glob pattern used to filter results (for example, `foo*bar`).
  /// [prefix] Filter results to include only objects whose names begin with this prefix.
  const GetBucketObjectContentsArgs({
    required this.bucket,
    this.matchGlob,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'matchGlob': ?matchGlob,
      'prefix': ?prefix,
    };
  }

  factory GetBucketObjectContentsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentsArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      matchGlob: (() { final guardedValue = map['matchGlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
