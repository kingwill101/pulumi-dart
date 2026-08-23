// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationMember.
class GetOrganizationMemberResult {
  /// The member's built-in role (member, admin, billing-manager). Absent when a custom role is assigned — check `roleId` in that case.
  final String? role;
  /// The custom role ID assigned to this member, if any.
  final String? roleId;
  /// The name of the currently assigned role (custom role name, or built-in role).
  final String? roleName;
  /// The member's Pulumi Cloud username.
  final String username;
  /// Whether this member is an admin in Pulumi Cloud without admin access on the backing identity provider.
  final bool virtualAdmin;

  /// Creates a new [GetOrganizationMemberResult].
  /// [role] The member's built-in role (member, admin, billing-manager). Absent when a custom role is assigned — check `roleId` in that case.
  /// [roleId] The custom role ID assigned to this member, if any.
  /// [roleName] The name of the currently assigned role (custom role name, or built-in role).
  /// [username] The member's Pulumi Cloud username.
  /// [virtualAdmin] Whether this member is an admin in Pulumi Cloud without admin access on the backing identity provider.
  const GetOrganizationMemberResult({
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

  factory GetOrganizationMemberResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMemberResult(
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: map['username'] as String,
      virtualAdmin: map['virtualAdmin'] as bool,
    );
  }
}
