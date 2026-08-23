// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_role_api_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_api_role_api_args_doc}
class RoleApiArgs {
  /// Also create an associated policy and role binding alongside the role
  final pulumi.Input<bool>? createPolicyAndRole;
  /// A human-readable description of the permission descriptor.
  final pulumi.Input<String>? description;
  /// The detailed permission descriptor tree.
  final pulumi.Input<dynamic>? details;
  /// The name of the permission descriptor.
  final pulumi.Input<String>? name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The resource type this permission descriptor applies to.
  final pulumi.Input<String>? resourceType;
  /// The role identifier
  final pulumi.Input<String>? roleID;
  /// The UX purpose of this permission descriptor (e.g. role, policy, set).
  final pulumi.Input<String>? uxPurpose;

  /// Creates a new [RoleApiArgs].
  /// [createPolicyAndRole] Also create an associated policy and role binding alongside the role
  /// [description] A human-readable description of the permission descriptor.
  /// [details] The detailed permission descriptor tree.
  /// [name] The name of the permission descriptor.
  /// [orgName] The organization name
  /// [resourceType] The resource type this permission descriptor applies to.
  /// [roleID] The role identifier
  /// [uxPurpose] The UX purpose of this permission descriptor (e.g. role, policy, set).
  const RoleApiArgs({
    this.createPolicyAndRole,
    this.description,
    this.details,
    this.name,
    required this.orgName,
    this.resourceType,
    this.roleID,
    this.uxPurpose,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createPolicyAndRole': ?createPolicyAndRole,
      'description': ?description,
      'details': ?details,
      'name': ?name,
      'orgName': orgName,
      'resourceType': ?resourceType,
      'roleID': ?roleID,
      'uxPurpose': ?uxPurpose,
    };
  }

  factory RoleApiArgs.fromMap(Map<String, dynamic> map) {
    return RoleApiArgs(
      createPolicyAndRole: (() { final guardedValue = map['createPolicyAndRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleID: (() { final guardedValue = map['roleID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uxPurpose: (() { final guardedValue = map['uxPurpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
