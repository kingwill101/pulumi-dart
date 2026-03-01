// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_bucket_access_control_args_doc}
/// Arguments for getBucketAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_bucket_access_control_args_doc}
class GetBucketAccessControlArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> entity;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetBucketAccessControlArgs].
  /// [bucket] Required.
  /// [entity] Required.
  /// [userProject] Optional.
  GetBucketAccessControlArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> entity,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      entity = pulumi.Input.asInput<String>(entity),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'userProject': ?userProject,
    };
  }

  factory GetBucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketAccessControlArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      entity: pulumi.Output.create<String>(map['entity'] as String),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

