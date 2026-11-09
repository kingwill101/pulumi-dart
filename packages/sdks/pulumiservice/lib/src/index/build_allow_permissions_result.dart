// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildAllowPermissions.
class BuildAllowPermissionsResult {
  /// A `PermissionDescriptorAllow` granting the supplied scopes on every entity of the matching resource type, ready to assign to `OrganizationRole.permissions`.
  final Map<String, dynamic>? permissions;

  /// Creates a new [BuildAllowPermissionsResult].
  /// [permissions] A `PermissionDescriptorAllow` granting the supplied scopes on every entity of the matching resource type, ready to assign to `OrganizationRole.permissions`.
  const BuildAllowPermissionsResult({
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
    };
  }

  factory BuildAllowPermissionsResult.fromMap(Map<String, dynamic> map) {
    return BuildAllowPermissionsResult(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
