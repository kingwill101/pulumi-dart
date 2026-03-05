// ignore_for_file: unused_element, unnecessary_cast

import 'object_access_control_project_team_response.dart';

/// Result data returned by getObjectAccessControl.
class GetObjectAccessControlResult {
  /// The name of the bucket.
  final String bucket;
  /// The domain associated with the entity, if any.
  final String domain;
  /// The email address associated with the entity, if any.
  final String email;
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
  final String entity;
  /// The ID for the entity, if any.
  final String entityId;
  /// HTTP 1.1 Entity tag for the access-control entry.
  final String etag;
  /// The content generation of the object, if applied to an object.
  final String generation;
  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final String kind;
  /// The name of the object, if applied to an object.
  final String object_;
  /// The project team associated with the entity, if any.
  final ObjectAccessControlProjectTeamResponse projectTeam;
  /// The access permission for the entity.
  final String role;
  /// The link to this access-control entry.
  final String selfLink;

  /// Creates a new [GetObjectAccessControlResult].
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
  GetObjectAccessControlResult({
    required this.bucket,
    required this.domain,
    required this.email,
    required this.entity,
    required this.entityId,
    required this.etag,
    required this.generation,
    required this.kind,
    required this.object_,
    required this.projectTeam,
    required this.role,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'domain': domain,
      'email': email,
      'entity': entity,
      'entityId': entityId,
      'etag': etag,
      'generation': generation,
      'kind': kind,
      'object': object_,
      'projectTeam': projectTeam.toMap(),
      'role': role,
      'selfLink': selfLink,
    };
  }

  factory GetObjectAccessControlResult.fromMap(Map<String, dynamic> map) {
    return GetObjectAccessControlResult(
      bucket: map['bucket'] as String,
      domain: map['domain'] as String,
      email: map['email'] as String,
      entity: map['entity'] as String,
      entityId: map['entityId'] as String,
      etag: map['etag'] as String,
      generation: map['generation'] as String,
      kind: map['kind'] as String,
      object_: map['object'] as String,
      projectTeam: ObjectAccessControlProjectTeamResponse.fromMap((map['projectTeam']! as Map).cast<String, dynamic>()),
      role: map['role'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}

