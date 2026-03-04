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
  final pulumi.Input<String>? object_;

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
  /// [object_] The name of the object, if applied to an object.
  /// [projectTeams] The project team associated with the entity
  /// [role] The access permission for the entity.
  DefaultObjectAccessControlState({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.generation,
    this.object_,
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
      'object': ?object_,
      'projectTeams':
          ?pulumi.Input.mapOptionalInputValue<
            List<DefaultObjectAccessControlProjectTeam>,
            List<Map<String, dynamic>>
          >(
            projectTeams,
            (value) =>
                pulumi.Input.encodeList<
                  DefaultObjectAccessControlProjectTeam,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'role': ?role,
    };
  }

  factory DefaultObjectAccessControlState.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entity: (() {
        final guardedValue = map['entity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityId: (() {
        final guardedValue = map['entityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      generation: (() {
        final guardedValue = map['generation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      object_: (() {
        final guardedValue = map['object'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectTeams: (() {
        final guardedValue = map['projectTeams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DefaultObjectAccessControlProjectTeam>(
            guardedValue,
            (value) => DefaultObjectAccessControlProjectTeam.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
