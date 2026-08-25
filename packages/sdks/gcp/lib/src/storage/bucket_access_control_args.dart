// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_bucket_access_control_bucket_access_control_args_doc}
/// The set of arguments for BucketAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_bucket_access_control_bucket_access_control_args_doc}
class BucketAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  final pulumi.Input<String?>? role;

  /// Creates a new [BucketAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [role] The access permission for the entity.
  const BucketAccessControlArgs({
    required this.bucket,
    this.deletionPolicy,
    required this.entity,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'deletionPolicy': ?deletionPolicy,
      'entity': entity,
      'role': ?role,
    };
  }

  factory BucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entity: pulumi.Input.fromValue(map['entity'] as String),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
