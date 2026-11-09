// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildRolePermissions.
class BuildRolePermissionsResult {
  /// A `PermissionDescriptorGroup` combining every grant, ready to assign to `OrganizationRole.permissions`.
  final Map<String, dynamic>? permissions;

  /// Creates a new [BuildRolePermissionsResult].
  /// [permissions] A `PermissionDescriptorGroup` combining every grant, ready to assign to `OrganizationRole.permissions`.
  const BuildRolePermissionsResult({
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
    };
  }

  factory BuildRolePermissionsResult.fromMap(Map<String, dynamic> map) {
    return BuildRolePermissionsResult(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
