// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_predefined_role.dart';

/// Role is the type for Kubernetes roles
class Role {
  /// predefined_role is the Kubernetes default role to use
  final pulumi.Input<RolePredefinedRole>? predefinedRole;

  /// Creates a new [Role].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  Role({
    this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': ?pulumi.Input.mapOptionalInputValue<RolePredefinedRole, String>(predefinedRole, (value) => value.value),
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      predefinedRole: map['predefinedRole'] == null ? null : (RolePredefinedRole.fromValue(map['predefinedRole']! as String)).input(),
    );
  }
}

