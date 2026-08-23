// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildStackScopedPermissions.
class BuildStackScopedPermissionsResult {
  /// A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named stack, ready to assign to `OrganizationRole.permissions`.
  final Map<String, dynamic> permissions;

  /// Creates a new [BuildStackScopedPermissionsResult].
  /// [permissions] A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named stack, ready to assign to `OrganizationRole.permissions`.
  const BuildStackScopedPermissionsResult({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
    };
  }

  factory BuildStackScopedPermissionsResult.fromMap(Map<String, dynamic> map) {
    return BuildStackScopedPermissionsResult(
      permissions: (map['permissions'] as Map).cast<String, dynamic>(),
    );
  }
}
