// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_object_get_bucket_object_args_doc}
/// Arguments for getBucketObject.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_object_get_bucket_object_args_doc}
class GetBucketObjectArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String>? bucket;
  /// The name of the object.
  final pulumi.Input<String>? name;

  /// Creates a new [GetBucketObjectArgs].
  /// [bucket] The name of the containing bucket.
  /// [name] The name of the object.
  const GetBucketObjectArgs({
    this.bucket,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'name': ?name,
    };
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

