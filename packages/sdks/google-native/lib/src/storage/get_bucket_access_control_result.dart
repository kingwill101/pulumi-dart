// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_access_control_project_team_response.dart';

/// Result data returned by getBucketAccessControl.
class GetBucketAccessControlResult {
  /// The name of the bucket.
  final String? bucket;
  /// The domain associated with the entity, if any.
  final String? domain;
  /// The email address associated with the entity, if any.
  final String? email;
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
  final String? entity;
  /// The ID for the entity, if any.
  final String? entityId;
  /// HTTP 1.1 Entity tag for the access-control entry.
  final String? etag;
  /// The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  final String? kind;
  /// The project team associated with the entity, if any.
  final BucketAccessControlProjectTeamResponse? projectTeam;
  /// The access permission for the entity.
  final String? role;
  /// The link to this access-control entry.
  final String? selfLink;

  /// Creates a new [GetBucketAccessControlResult].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [kind] The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  const GetBucketAccessControlResult({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.kind,
    this.projectTeam,
    this.role,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'etag': ?etag,
      'kind': ?kind,
      'projectTeam': ?projectTeam?.toMap(),
      'role': ?role,
      'selfLink': ?selfLink,
    };
  }

  factory GetBucketAccessControlResult.fromMap(Map<String, dynamic> map) {
    return GetBucketAccessControlResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectTeam: (() { final guardedValue = map['projectTeam']; if (guardedValue == null) return null; return BucketAccessControlProjectTeamResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
