// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_project_team.dart';

/// Input properties used for looking up and filtering ObjectAccessControl resources.
class ObjectAccessControlState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// The domain associated with the entity.
  final pulumi.Input<String>? domain;
  /// The email address associated with the entity.
  final pulumi.Input<String>? email;
  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  final pulumi.Input<String>? entity;
  /// The ID for the entity
  final pulumi.Input<String>? entityId;
  /// The content generation of the object, if applied to an object.
  final pulumi.Input<int>? generation;
  /// The name of the object to apply the access control to.
  final pulumi.Input<String>? object;
  /// The project team associated with the entity
  /// Structure is documented below.
  final pulumi.Input<List<ObjectAccessControlProjectTeam>>? projectTeams;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final pulumi.Input<String>? role;

  /// Creates a new [ObjectAccessControlState].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity.
  /// [email] The email address associated with the entity.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity
  /// [generation] The content generation of the object, if applied to an object.
  /// [object] The name of the object to apply the access control to.
  /// [projectTeams] The project team associated with the entity
  /// [role] The access permission for the entity.
  ObjectAccessControlState({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.generation,
    this.object,
    this.projectTeams,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'generation': ?generation,
      'object': ?object,
      'projectTeams': ?pulumi.Input.mapOptionalInputValue<List<ObjectAccessControlProjectTeam>, List<Map<String, dynamic>>>(projectTeams, (value) => pulumi.Input.encodeList<ObjectAccessControlProjectTeam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory ObjectAccessControlState.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      entity: map['entity'] == null ? null : (map['entity'] as String).input(),
      entityId: map['entityId'] == null ? null : (map['entityId'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as int).input(),
      object: map['object'] == null ? null : (map['object'] as String).input(),
      projectTeams: map['projectTeams'] == null ? null : (pulumi.Input.decodeList<ObjectAccessControlProjectTeam>(map['projectTeams'], (value) => ObjectAccessControlProjectTeam.fromMap((value as Map).cast<String, dynamic>()))).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

