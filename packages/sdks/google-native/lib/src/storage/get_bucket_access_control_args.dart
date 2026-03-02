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
    required this.bucket,
    required this.entity,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'userProject': ?userProject,
    };
  }

  factory GetBucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketAccessControlArgs(
      bucket: (map['bucket'] as String).input(),
      entity: (map['entity'] as String).input(),
      userProject: map['userProject'] == null ? null : (map['userProject'] as String).input(),
    );
  }
}

