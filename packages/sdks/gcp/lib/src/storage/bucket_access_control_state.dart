// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketAccessControl resources.
class BucketAccessControlState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// The domain associated with the entity.
  final pulumi.Input<String>? domain;
  /// The email address associated with the entity.
  final pulumi.Input<String>? email;
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
  final pulumi.Input<String>? entity;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`, `WRITER`.
  final pulumi.Input<String>? role;

  /// Creates a new [BucketAccessControlState].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity.
  /// [email] The email address associated with the entity.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [role] The access permission for the entity.
  BucketAccessControlState({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'role': ?role,
    };
  }

  factory BucketAccessControlState.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlState(
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      entity: map['entity'] == null ? null : (map['entity']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

