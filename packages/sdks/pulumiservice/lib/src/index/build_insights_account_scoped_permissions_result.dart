// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildInsightsAccountScopedPermissions.
class BuildInsightsAccountScopedPermissionsResult {
  /// A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named insights account, ready to assign to `OrganizationRole.permissions`.
  final Map<String, dynamic>? permissions;

  /// Creates a new [BuildInsightsAccountScopedPermissionsResult].
  /// [permissions] A `PermissionDescriptorCondition` tree gating a `PermissionDescriptorAllow` on the named insights account, ready to assign to `OrganizationRole.permissions`.
  const BuildInsightsAccountScopedPermissionsResult({
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
    };
  }

  factory BuildInsightsAccountScopedPermissionsResult.fromMap(Map<String, dynamic> map) {
    return BuildInsightsAccountScopedPermissionsResult(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
