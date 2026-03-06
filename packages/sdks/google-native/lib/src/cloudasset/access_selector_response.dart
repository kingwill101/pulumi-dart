// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies roles and/or permissions to analyze, to determine both the identities possessing them and the resources they control. If multiple values are specified, results will include roles or permissions matching any of them. The total number of roles and permissions should be equal or less than 10.
class AccessSelectorResponse {
  /// Optional. The permissions to appear in result.
  final pulumi.Input<List<String>> permissions;
  /// Optional. The roles to appear in result.
  final pulumi.Input<List<String>> roles;

  /// Creates a new [AccessSelectorResponse].
  /// [permissions] Optional. The permissions to appear in result.
  /// [roles] Optional. The roles to appear in result.
  const AccessSelectorResponse({
    required this.permissions,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
      'roles': roles,
    };
  }

  factory AccessSelectorResponse.fromMap(Map<String, dynamic> map) {
    return AccessSelectorResponse(
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      roles: pulumi.Input.fromValue((map['roles'] as List).cast<String>()),
    );
  }
}

