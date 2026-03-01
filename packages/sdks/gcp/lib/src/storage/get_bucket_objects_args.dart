// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_objects_get_bucket_objects_args_doc}
/// Arguments for getBucketObjects.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_objects_get_bucket_objects_args_doc}
class GetBucketObjectsArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;
  /// A glob pattern used to filter results (for example, `foo*bar`).
  final pulumi.Input<String>? matchGlob;
  /// Filter results to include only objects whose names begin with this prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [GetBucketObjectsArgs].
  /// [bucket] The name of the containing bucket.
  /// [matchGlob] A glob pattern used to filter results (for example, `foo*bar`).
  /// [prefix] Filter results to include only objects whose names begin with this prefix.
  GetBucketObjectsArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? matchGlob,
    pulumi.Output<String>? prefix,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      matchGlob = pulumi.Input.asOptionalInput<String>(matchGlob),
      prefix = pulumi.Input.asOptionalInput<String>(prefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'matchGlob': ?matchGlob,
      'prefix': ?prefix,
    };
  }

  factory GetBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      matchGlob: map['matchGlob'] == null ? null : pulumi.Output.create<String>(map['matchGlob'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
    );
  }
}

