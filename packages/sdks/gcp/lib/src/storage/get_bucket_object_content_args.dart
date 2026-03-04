// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_bucket_object_content_get_bucket_object_content_args_doc}
/// Arguments for getBucketObjectContent.
/// {@endtemplate}
/// {@macro pulumi_storage_get_bucket_object_content_get_bucket_object_content_args_doc}
class GetBucketObjectContentArgs {
  /// The name of the containing bucket.
  final pulumi.Input<String> bucket;

  /// (Computed) The content of the object.
  final pulumi.Input<String>? content;

  /// The name of the object.
  final pulumi.Input<String> name;

  /// Creates a new [GetBucketObjectContentArgs].
  /// [bucket] The name of the containing bucket.
  /// [content] (Computed) The content of the object.
  /// [name] The name of the object.
  GetBucketObjectContentArgs({
    required this.bucket,
    this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'content': ?content,
      'name': name,
    };
  }

  factory GetBucketObjectContentArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
