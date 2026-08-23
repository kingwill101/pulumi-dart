// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_predefined_role_gkehub_v1beta.dart';

/// Role is the type for Kubernetes roles
class RoleGkehubV1beta {
  /// predefined_role is the Kubernetes default role to use
  final pulumi.Input<RolePredefinedRoleGkehubV1beta>? predefinedRole;

  /// Creates a new [RoleGkehubV1beta].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  const RoleGkehubV1beta({
    this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': ?pulumi.Input.mapOptionalInputValue<RolePredefinedRoleGkehubV1beta, String>(predefinedRole, (value) => value.wireValue),
    };
  }

  factory RoleGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return RoleGkehubV1beta(
      predefinedRole: (() { final guardedValue = map['predefinedRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolePredefinedRoleGkehubV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}
