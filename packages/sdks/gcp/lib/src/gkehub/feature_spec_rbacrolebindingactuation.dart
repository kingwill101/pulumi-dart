// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecRbacrolebindingactuation {
  /// The list of allowed custom roles (ClusterRoles). If a custom role is not part of this list, it cannot be used in a fleet scope RBACRoleBinding. If a custom role in this list is in use, it cannot be removed from the list until the scope RBACRolebindings using it are deleted.
  final pulumi.Input<List<String>>? allowedCustomRoles;

  /// Creates a new [FeatureSpecRbacrolebindingactuation].
  /// [allowedCustomRoles] The list of allowed custom roles (ClusterRoles). If a custom role is not part of this list, it cannot be used in a fleet scope RBACRoleBinding. If a custom role in this list is in use, it cannot be removed from the list until the scope RBACRolebindings using it are deleted.
  const FeatureSpecRbacrolebindingactuation({
    this.allowedCustomRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCustomRoles': ?allowedCustomRoles,
    };
  }

  factory FeatureSpecRbacrolebindingactuation.fromMap(Map<String, dynamic> map) {
    return FeatureSpecRbacrolebindingactuation(
      allowedCustomRoles: (() { final guardedValue = map['allowedCustomRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
