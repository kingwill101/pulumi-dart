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
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? content,
    required pulumi.Output<String> name,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      content = pulumi.Input.asOptionalInput<String>(content),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'content': ?content,
      'name': name,
    };
  }

  factory GetBucketObjectContentArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

