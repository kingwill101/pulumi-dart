// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_default_object_access_control_default_object_access_control_args_doc}
/// The set of arguments for DefaultObjectAccessControl.
/// {@endtemplate}
/// {@macro pulumi_storage_default_object_access_control_default_object_access_control_args_doc}
class DefaultObjectAccessControlArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  /// The name of the object, if applied to an object.
  final pulumi.Input<String?>? object_;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  final pulumi.Input<String> role;

  /// Creates a new [DefaultObjectAccessControlArgs].
  /// [bucket] The name of the bucket.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [object_] The name of the object, if applied to an object.
  /// [role] The access permission for the entity.
  const DefaultObjectAccessControlArgs({
    required this.bucket,
    this.deletionPolicy,
    required this.entity,
    this.object_,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'deletionPolicy': ?deletionPolicy,
      'entity': entity,
      'object': ?object_,
      'role': role,
    };
  }

  factory DefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectAccessControlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entity: pulumi.Input.fromValue(map['entity'] as String),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
