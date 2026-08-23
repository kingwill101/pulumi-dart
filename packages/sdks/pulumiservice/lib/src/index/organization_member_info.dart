// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationMemberInfo {
  /// The member's built-in role (member, admin, billing-manager). Absent when a custom role is assigned — check `roleId` in that case.
  final pulumi.Input<String>? role;
  /// The custom role ID assigned to this member, if any.
  final pulumi.Input<String>? roleId;
  /// The name of the currently assigned role (custom role name, or built-in role).
  final pulumi.Input<String>? roleName;
  /// The member's Pulumi Cloud username.
  final pulumi.Input<String> username;
  /// Whether this member is an admin in Pulumi Cloud without admin access on the backing identity provider.
  final pulumi.Input<bool> virtualAdmin;

  /// Creates a new [OrganizationMemberInfo].
  /// [role] The member's built-in role (member, admin, billing-manager). Absent when a custom role is assigned — check `roleId` in that case.
  /// [roleId] The custom role ID assigned to this member, if any.
  /// [roleName] The name of the currently assigned role (custom role name, or built-in role).
  /// [username] The member's Pulumi Cloud username.
  /// [virtualAdmin] Whether this member is an admin in Pulumi Cloud without admin access on the backing identity provider.
  const OrganizationMemberInfo({
    this.role,
    this.roleId,
    this.roleName,
    required this.username,
    required this.virtualAdmin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': ?role,
      'roleId': ?roleId,
      'roleName': ?roleName,
      'username': username,
      'virtualAdmin': virtualAdmin,
    };
  }

  factory OrganizationMemberInfo.fromMap(Map<String, dynamic> map) {
    return OrganizationMemberInfo(
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
      virtualAdmin: pulumi.Input.fromValue(map['virtualAdmin'] as bool),
    );
  }
}
