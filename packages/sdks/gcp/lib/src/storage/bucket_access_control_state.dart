// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketAccessControl resources.
class BucketAccessControlState {
  /// The name of the bucket.
  final pulumi.Input<String?>? bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The domain associated with the entity.
  final pulumi.Input<String?>? domain;
  /// The email address associated with the entity.
  final pulumi.Input<String?>? email;
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
  final pulumi.Input<String?>? entity;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  final pulumi.Input<String?>? role;

  /// Creates a new [BucketAccessControlState].
  /// [bucket] The name of the bucket.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [domain] The domain associated with the entity.
  /// [email] The email address associated with the entity.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [role] The access permission for the entity.
  const BucketAccessControlState({
    this.bucket,
    this.deletionPolicy,
    this.domain,
    this.email,
    this.entity,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'deletionPolicy': ?deletionPolicy,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'role': ?role,
    };
  }

  factory BucketAccessControlState.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
