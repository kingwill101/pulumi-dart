// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_object_access_control_object_access_control_args_doc}
/// The set of arguments for ObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_object_access_control_object_access_control_args_doc}
class ObjectAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  final pulumi.Input<String> entity;
  /// The name of the object to apply the access control to.
  final pulumi.Input<String> object;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final pulumi.Input<String> role;

  /// Creates a new [ObjectAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [object] The name of the object to apply the access control to.
  /// [role] The access permission for the entity.
  ObjectAccessControlArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> entity,
    required pulumi.Output<String> object,
    required pulumi.Output<String> role,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      entity = pulumi.Input.asInput<String>(entity),
      object = pulumi.Input.asInput<String>(object),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'entity': entity,
      'object': object,
      'role': role,
    };
  }

  factory ObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      entity: pulumi.Output.create<String>(map['entity'] as String),
      object: pulumi.Output.create<String>(map['object'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

