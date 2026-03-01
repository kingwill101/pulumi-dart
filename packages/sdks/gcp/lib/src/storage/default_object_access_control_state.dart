// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_object_access_control_project_team.dart';

/// Input properties used for looking up and filtering DefaultObjectAccessControl resources.
class DefaultObjectAccessControlState {
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
  /// The name of the object, if applied to an object.
  final pulumi.Input<String>? object;
  /// The project team associated with the entity
  /// Structure is documented below.
  final pulumi.Input<List<DefaultObjectAccessControlProjectTeam>>? projectTeams;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final pulumi.Input<String>? role;

  /// Creates a new [DefaultObjectAccessControlState].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity.
  /// [email] The email address associated with the entity.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity
  /// [generation] The content generation of the object, if applied to an object.
  /// [object] The name of the object, if applied to an object.
  /// [projectTeams] The project team associated with the entity
  /// [role] The access permission for the entity.
  DefaultObjectAccessControlState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? email,
    pulumi.Output<String>? entity,
    pulumi.Output<String>? entityId,
    pulumi.Output<int>? generation,
    pulumi.Output<String>? object,
    pulumi.Output<List<DefaultObjectAccessControlProjectTeam>>? projectTeams,
    pulumi.Output<String>? role,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      email = pulumi.Input.asOptionalInput<String>(email),
      entity = pulumi.Input.asOptionalInput<String>(entity),
      entityId = pulumi.Input.asOptionalInput<String>(entityId),
      generation = pulumi.Input.asOptionalInput<int>(generation),
      object = pulumi.Input.asOptionalInput<String>(object),
      projectTeams = pulumi.Input.asOptionalInput<List<DefaultObjectAccessControlProjectTeam>>(projectTeams),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'generation': ?generation,
      'object': ?object,
      'projectTeams': ?pulumi.Input.mapOptionalInputValue<List<DefaultObjectAccessControlProjectTeam>, List<Map<String, dynamic>>>(projectTeams, (value) => pulumi.Input.encodeList<DefaultObjectAccessControlProjectTeam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory DefaultObjectAccessControlState.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      entity: map['entity'] == null ? null : pulumi.Output.create<String>(map['entity'] as String),
      entityId: map['entityId'] == null ? null : pulumi.Output.create<String>(map['entityId'] as String),
      generation: map['generation'] == null ? null : pulumi.Output.create<int>(map['generation'] as int),
      object: map['object'] == null ? null : pulumi.Output.create<String>(map['object'] as String),
      projectTeams: map['projectTeams'] == null ? null : pulumi.Output.create<List<DefaultObjectAccessControlProjectTeam>>(pulumi.Input.decodeList<DefaultObjectAccessControlProjectTeam>(map['projectTeams'], (value) => DefaultObjectAccessControlProjectTeam.fromMap((value as Map).cast<String, dynamic>()))),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

