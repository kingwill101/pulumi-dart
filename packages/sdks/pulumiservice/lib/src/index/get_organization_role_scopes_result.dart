// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_scope_info.dart';

/// Result data returned by getOrganizationRoleScopes.
class GetOrganizationRoleScopesResult {
  final List<RoleScopeInfo> scopes;

  /// Creates a new [GetOrganizationRoleScopesResult].
  /// [scopes] Required.
  const GetOrganizationRoleScopesResult({
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': pulumi.Input.encodeList<RoleScopeInfo, Map<String, dynamic>>(scopes, (value) => value.toMap()),
    };
  }

  factory GetOrganizationRoleScopesResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleScopesResult(
      scopes: pulumi.Input.decodeList<RoleScopeInfo>(map['scopes']!, (value) => RoleScopeInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
