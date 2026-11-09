// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_role_info.dart';

/// Result data returned by getOrganizationRoles.
class GetOrganizationRolesResult {
  /// The organization's roles, built-in and custom, sorted by name.
  final List<OrganizationRoleInfo>? roles;

  /// Creates a new [GetOrganizationRolesResult].
  /// [roles] The organization's roles, built-in and custom, sorted by name.
  const GetOrganizationRolesResult({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<OrganizationRoleInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOrganizationRolesResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRolesResult(
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrganizationRoleInfo>(guardedValue, (value) => OrganizationRoleInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
