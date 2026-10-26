// ignore_for_file: unused_element, unnecessary_cast

import 'default_object_access_control_project_team_response.dart';

/// Result data returned by getDefaultObjectAccessControl.
class GetDefaultObjectAccessControlResult {
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
  /// The content generation of the object, if applied to an object.
  final String? generation;
  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final String? kind;
  /// The name of the object, if applied to an object.
  final String? object_;
  /// The project team associated with the entity, if any.
  final DefaultObjectAccessControlProjectTeamResponse? projectTeam;
  /// The access permission for the entity.
  final String? role;
  /// The link to this access-control entry.
  final String? selfLink;

  /// Creates a new [GetDefaultObjectAccessControlResult].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [generation] The content generation of the object, if applied to an object.
  /// [kind] The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  /// [object_] The name of the object, if applied to an object.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  const GetDefaultObjectAccessControlResult({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.generation,
    this.kind,
    this.object_,
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
      'generation': ?generation,
      'kind': ?kind,
      'object': ?object_,
      'projectTeam': ?projectTeam?.toMap(),
      'role': ?role,
      'selfLink': ?selfLink,
    };
  }

  factory GetDefaultObjectAccessControlResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultObjectAccessControlResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectTeam: (() { final guardedValue = map['projectTeam']; if (guardedValue == null) return null; return DefaultObjectAccessControlProjectTeamResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
