// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildInsightsAccountScopedPermissions.
class BuildInsightsAccountScopedPermissionsResult {
  /// A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named insights account, ready to assign to `OrganizationRole.permissions`.
  final Map<String, dynamic> permissions;

  /// Creates a new [BuildInsightsAccountScopedPermissionsResult].
  /// [permissions] A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named insights account, ready to assign to `OrganizationRole.permissions`.
  const BuildInsightsAccountScopedPermissionsResult({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
    };
  }

  factory BuildInsightsAccountScopedPermissionsResult.fromMap(Map<String, dynamic> map) {
    return BuildInsightsAccountScopedPermissionsResult(
      permissions: (map['permissions'] as Map).cast<String, dynamic>(),
    );
  }
}
