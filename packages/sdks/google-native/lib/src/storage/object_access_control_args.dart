// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_project_team.dart';

/// {@template pulumi_storage_v1_object_access_control_args_doc}
/// The set of arguments for ObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_object_access_control_args_doc}
class ObjectAccessControlArgs {
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
  /// The content generation of the object, if applied to an object.
  final pulumi.Input<String>? generation;
  /// The ID of the access-control entry.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  final pulumi.Input<String>? kind;
  /// The name of the object, if applied to an object.
  final pulumi.Input<String> object;
  /// The project team associated with the entity, if any.
  final pulumi.Input<ObjectAccessControlProjectTeam>? projectTeam;
  /// The access permission for the entity.
  final pulumi.Input<String>? role;
  /// The link to this access-control entry.
  final pulumi.Input<String>? selfLink;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// Creates a new [ObjectAccessControlArgs].
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
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  ObjectAccessControlArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? email,
    pulumi.Output<String>? entity,
    pulumi.Output<String>? entityId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? generation,
    pulumi.Output<String>? id,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> object,
    pulumi.Output<ObjectAccessControlProjectTeam>? projectTeam,
    pulumi.Output<String>? role,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      email = pulumi.Input.asOptionalInput<String>(email),
      entity = pulumi.Input.asOptionalInput<String>(entity),
      entityId = pulumi.Input.asOptionalInput<String>(entityId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      generation = pulumi.Input.asOptionalInput<String>(generation),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      object = pulumi.Input.asInput<String>(object),
      projectTeam = pulumi.Input.asOptionalInput<ObjectAccessControlProjectTeam>(projectTeam),
      role = pulumi.Input.asOptionalInput<String>(role),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'domain': ?domain,
      'email': ?email,
      'entity': ?entity,
      'entityId': ?entityId,
      'etag': ?etag,
      'generation': ?generation,
      'id': ?id,
      'kind': ?kind,
      'object': object,
      'projectTeam': ?pulumi.Input.mapOptionalInputValue<ObjectAccessControlProjectTeam, Map<String, dynamic>>(projectTeam, (value) => value.toMap()),
      'role': ?role,
      'selfLink': ?selfLink,
      'userProject': ?userProject,
    };
  }

  factory ObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      entity: map['entity'] == null ? null : pulumi.Output.create<String>(map['entity'] as String),
      entityId: map['entityId'] == null ? null : pulumi.Output.create<String>(map['entityId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      generation: map['generation'] == null ? null : pulumi.Output.create<String>(map['generation'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      object: pulumi.Output.create<String>(map['object'] as String),
      projectTeam: map['projectTeam'] == null ? null : pulumi.Output.create<ObjectAccessControlProjectTeam>(ObjectAccessControlProjectTeam.fromMap((map['projectTeam'] as Map).cast<String, dynamic>())),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

