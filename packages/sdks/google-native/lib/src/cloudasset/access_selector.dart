// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies roles and/or permissions to analyze, to determine both the identities possessing them and the resources they control. If multiple values are specified, results will include roles or permissions matching any of them. The total number of roles and permissions should be equal or less than 10.
class AccessSelector {
  /// Optional. The permissions to appear in result.
  final pulumi.Input<List<String>>? permissions;
  /// Optional. The roles to appear in result.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [AccessSelector].
  /// [permissions] Optional. The permissions to appear in result.
  /// [roles] Optional. The roles to appear in result.
  AccessSelector({
    this.permissions,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'roles': ?roles,
    };
  }

  factory AccessSelector.fromMap(Map<String, dynamic> map) {
    return AccessSelector(
      permissions: map['permissions'] == null ? null : ((map['permissions'] as List).cast<String>()).input(),
      roles: map['roles'] == null ? null : ((map['roles'] as List).cast<String>()).input(),
    );
  }
}

