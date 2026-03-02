// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_bucket_access_control_bucket_access_control_args_doc}
/// The set of arguments for BucketAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_bucket_access_control_bucket_access_control_args_doc}
class BucketAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The entity holding the permission, in one of the following forms:
  /// user-userId
  /// user-email
  /// group-groupId
  /// group-email
  /// domain-domain
  /// project-team-projectId
  /// allUsers
  /// allAuthenticatedUsers
  /// Examples:
  /// The user liz@example.com would be user-liz@example.com.
  /// The group example@googlegroups.com would be
  /// group-example@googlegroups.com.
  /// To refer to all members of the Google Apps for Business domain
  /// example.com, the entity would be domain-example.com.
  final pulumi.Input<String> entity;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  final pulumi.Input<String>? role;

  /// Creates a new [BucketAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [role] The access permission for the entity.
  BucketAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'role': ?role,
    };
  }

  factory BucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlArgs(
      bucket: (map['bucket'] as String).input(),
      entity: (map['entity'] as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

