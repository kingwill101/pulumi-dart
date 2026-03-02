// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_project_team.dart';

/// An access-control entry.
class ObjectAccessControl {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
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
  /// The content generation of the object, if applied to an object.
  final pulumi.Input<String>? generation;
  /// The ID of the access-control entry.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final pulumi.Input<String>? kind;
  /// The name of the object, if applied to an object.
  final pulumi.Input<String>? object;
  /// The project team associated with the entity, if any.
  final pulumi.Input<ObjectAccessControlProjectTeam>? projectTeam;
  /// The access permission for the entity.
  final pulumi.Input<String>? role;
  /// The link to this access-control entry.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [ObjectAccessControl].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [generation] The content generation of the object, if applied to an object.
  /// [id] The ID of the access-control entry.
  /// [kind] The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  /// [object] The name of the object, if applied to an object.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  ObjectAccessControl({
    this.bucket,
    this.domain,
    this.email,
    this.entity,
    this.entityId,
    this.etag,
    this.generation,
    this.id,
    this.kind,
    this.object,
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
      'id': ?id,
      'kind': ?kind,
      'object': ?object,
      'projectTeam': ?pulumi.Input.mapOptionalInputValue<ObjectAccessControlProjectTeam, Map<String, dynamic>>(projectTeam, (value) => value.toMap()),
      'role': ?role,
      'selfLink': ?selfLink,
    };
  }

  factory ObjectAccessControl.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControl(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      entity: map['entity'] == null ? null : (map['entity'] as String).input(),
      entityId: map['entityId'] == null ? null : (map['entityId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      generation: map['generation'] == null ? null : (map['generation'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      object: map['object'] == null ? null : (map['object'] as String).input(),
      projectTeam: map['projectTeam'] == null ? null : (ObjectAccessControlProjectTeam.fromMap((map['projectTeam'] as Map).cast<String, dynamic>())).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
    );
  }
}

