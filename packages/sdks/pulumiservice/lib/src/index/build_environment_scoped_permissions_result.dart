// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildEnvironmentScopedPermissions.
class BuildEnvironmentScopedPermissionsResult {
  /// A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named environment, ready to assign to `OrganizationRole.permissions`.
  final Map<String, dynamic> permissions;

  /// Creates a new [BuildEnvironmentScopedPermissionsResult].
  /// [permissions] A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named environment, ready to assign to `OrganizationRole.permissions`.
  const BuildEnvironmentScopedPermissionsResult({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
    };
  }

  factory BuildEnvironmentScopedPermissionsResult.fromMap(Map<String, dynamic> map) {
    return BuildEnvironmentScopedPermissionsResult(
      permissions: (map['permissions'] as Map).cast<String, dynamic>(),
    );
  }
}
