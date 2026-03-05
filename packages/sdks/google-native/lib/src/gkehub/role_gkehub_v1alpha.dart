// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_predefined_role_gkehub_v1alpha.dart';

/// Role is the type for Kubernetes roles
class RoleGkehubV1alpha {
  /// predefined_role is the Kubernetes default role to use
  final pulumi.Input<RolePredefinedRoleGkehubV1alpha>? predefinedRole;

  /// Creates a new [RoleGkehubV1alpha].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  RoleGkehubV1alpha({
    this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': ?pulumi.Input.mapOptionalInputValue<RolePredefinedRoleGkehubV1alpha, String>(predefinedRole, (value) => value.wireValue),
    };
  }

  factory RoleGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return RoleGkehubV1alpha(
      predefinedRole: (() { final guardedValue = map['predefinedRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolePredefinedRoleGkehubV1alpha.fromValue(guardedValue as String)); })(),
    );
  }
}

