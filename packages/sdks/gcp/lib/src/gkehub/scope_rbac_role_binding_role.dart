// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScopeRbacRoleBindingRole {
  /// CustomRole is the custom Kubernetes ClusterRole to be used. The custom role format must be allowlisted in the rbacrolebindingactuation feature and RFC 1123 compliant.
  final pulumi.Input<String>? customRole;
  /// PredefinedRole is an ENUM representation of the default Kubernetes Roles
  /// Possible values are: `UNKNOWN`, `ADMIN`, `EDIT`, `VIEW`.
  final pulumi.Input<String>? predefinedRole;

  /// Creates a new [ScopeRbacRoleBindingRole].
  /// [customRole] CustomRole is the custom Kubernetes ClusterRole to be used. The custom role format must be allowlisted in the rbacrolebindingactuation feature and RFC 1123 compliant.
  /// [predefinedRole] PredefinedRole is an ENUM representation of the default Kubernetes Roles
  const ScopeRbacRoleBindingRole({
    this.customRole,
    this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRole': ?customRole,
      'predefinedRole': ?predefinedRole,
    };
  }

  factory ScopeRbacRoleBindingRole.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingRole(
      customRole: (() { final guardedValue = map['customRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predefinedRole: (() { final guardedValue = map['predefinedRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

