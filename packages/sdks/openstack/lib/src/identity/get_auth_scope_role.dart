// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthScopeRole {
  /// The ID of the role.
  final pulumi.Input<String> roleId;
  /// The name of the role.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetAuthScopeRole].
  /// [roleId] The ID of the role.
  /// [roleName] The name of the role.
  GetAuthScopeRole({
    required this.roleId,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleId': roleId,
      'roleName': roleName,
    };
  }

  factory GetAuthScopeRole.fromMap(Map<String, dynamic> map) {
    return GetAuthScopeRole(
      roleId: (map['roleId'] as String).input(),
      roleName: (map['roleName'] as String).input(),
    );
  }
}

