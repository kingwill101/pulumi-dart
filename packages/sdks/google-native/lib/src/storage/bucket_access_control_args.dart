// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control_project_team.dart';

/// {@template pulumi_storage_v1_bucket_access_control_args_doc}
/// The set of arguments for BucketAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_bucket_access_control_args_doc}
class BucketAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The domain associated with the entity, if any.
  final pulumi.Input<String>? domain;
  /// The email address associated with the entity, if any.
  final pulumi.Input<String>? email;
  /// The entity holding the permission, in one of the following forms:
  /// - user-userId
  /// - user-email
  /// - group-groupId
  /// - group-email
  /// - domain-domain
  /// - project-team-projectId
  /// - allUsers
  /// - allAuthenticatedUsers Examples:
  /// - The user liz@example.com would be user-liz@example.com.
  /// - The group example@googlegroups.com would be group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
  final pulumi.Input<String>? entity;
  /// The ID for the entity, if any.
  final pulumi.Input<String>? entityId;
  /// HTTP 1.1 Entity tag for the access-control entry.
  final pulumi.Input<String>? etag;
  /// The ID of the access-control entry.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  final pulumi.Input<String>? kind;
  /// The project team associated with the entity, if any.
  final pulumi.Input<BucketAccessControlProjectTeam>? projectTeam;
  /// The access permission for the entity.
  final pulumi.Input<String>? role;
  /// The link to this access-control entry.
  final pulumi.Input<String>? selfLink;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// Creates a new [BucketAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [id] The ID of the access-control entry.
  /// [kind] The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  const BucketAccessControlArgs({
    required this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.id,
    this.kind,
    this.projectTeam,
    this.role,
    this.selfLink,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'projectTeam': ?pulumi.Input.mapOptionalInputValue<BucketAccessControlProjectTeam, Map<String, dynamic>>(projectTeam, (value) => value.toMap()),
      'role': ?role,
      'selfLink': ?selfLink,
      'userProject': ?userProject,
    };
  }

  factory BucketAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectTeam: (() { final guardedValue = map['projectTeam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketAccessControlProjectTeam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
