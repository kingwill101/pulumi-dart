// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_default_role_args_doc}
/// The set of arguments for OrganizationDefaultRole.
/// {@endtemplate}
/// {@macro pulumi_index_organization_default_role_args_doc}
class OrganizationDefaultRoleArgs {
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The built-in role to use as the default. One of `reader`, `builder` or `maintainer`. Exactly one of `role` and `roleId` must be set.
  final pulumi.Input<String?>? role;
  /// The ID of a custom role to use as the default. Exactly one of `role` and `roleId` must be set.
  final pulumi.Input<String?>? roleId;

  /// Creates a new [OrganizationDefaultRoleArgs].
  /// [organizationName] The Pulumi Cloud organization name.
  /// [role] The built-in role to use as the default. One of `reader`, `builder` or `maintainer`. Exactly one of `role` and `roleId` must be set.
  /// [roleId] The ID of a custom role to use as the default. Exactly one of `role` and `roleId` must be set.
  const OrganizationDefaultRoleArgs({
    required this.organizationName,
    this.role,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'role': ?role,
      'roleId': ?roleId,
    };
  }

  factory OrganizationDefaultRoleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationDefaultRoleArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
