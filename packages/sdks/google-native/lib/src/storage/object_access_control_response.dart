// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_project_team_response.dart';

/// An access-control entry.
class ObjectAccessControlResponse {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;

  /// The domain associated with the entity, if any.
  final pulumi.Input<String> domain;

  /// The email address associated with the entity, if any.
  final pulumi.Input<String> email;

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
  final pulumi.Input<String> entity;

  /// The ID for the entity, if any.
  final pulumi.Input<String> entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  final pulumi.Input<String> etag;

  /// The content generation of the object, if applied to an object.
  final pulumi.Input<String> generation;

  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final pulumi.Input<String> kind;

  /// The name of the object, if applied to an object.
  final pulumi.Input<String> object_;

  /// The project team associated with the entity, if any.
  final pulumi.Input<ObjectAccessControlProjectTeamResponse> projectTeam;

  /// The access permission for the entity.
  final pulumi.Input<String> role;

  /// The link to this access-control entry.
  final pulumi.Input<String> selfLink;

  /// Creates a new [ObjectAccessControlResponse].
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
  ObjectAccessControlResponse({
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
      'projectTeam':
          pulumi.Input.mapInputValue<
            ObjectAccessControlProjectTeamResponse,
            Map<String, dynamic>
          >(projectTeam, (value) => value.toMap()),
      'role': role,
      'selfLink': selfLink,
    };
  }

  factory ObjectAccessControlResponse.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlResponse(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      entity: pulumi.Input.fromValue(map['entity'] as String),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
      projectTeam: pulumi.Input.fromValue(
        ObjectAccessControlProjectTeamResponse.fromMap(
          (map['projectTeam']! as Map).cast<String, dynamic>(),
        ),
      ),
      role: pulumi.Input.fromValue(map['role'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
    );
  }
}
