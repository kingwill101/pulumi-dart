// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_scope_info.dart';

/// Result data returned by getOrganizationRoleScopes.
class GetOrganizationRoleScopesResult {
  final List<RoleScopeInfo>? scopes;

  /// Creates a new [GetOrganizationRoleScopesResult].
  /// [scopes] Optional.
  const GetOrganizationRoleScopesResult({
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': ?(() { final guardedValue = scopes; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleScopeInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOrganizationRoleScopesResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleScopesResult(
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleScopeInfo>(guardedValue, (value) => RoleScopeInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
