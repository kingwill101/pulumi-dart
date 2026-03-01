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
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> entity,
    pulumi.Output<String>? role,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      entity = pulumi.Input.asInput<String>(entity),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'role': ?role,
    };
  }

  factory BucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      entity: pulumi.Output.create<String>(map['entity'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

