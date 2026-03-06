// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureSpecRbacrolebindingactuation {
  /// The list of allowed custom roles (ClusterRoles). If a custom role is not part of this list, it cannot be used in a fleet scope RBACRoleBinding. If a custom role in this list is in use, it cannot be removed from the list until the scope RBACRolebindings using it are deleted.
  final pulumi.Input<List<String>> allowedCustomRoles;

  /// Creates a new [GetFeatureSpecRbacrolebindingactuation].
  /// [allowedCustomRoles] The list of allowed custom roles (ClusterRoles). If a custom role is not part of this list, it cannot be used in a fleet scope RBACRoleBinding. If a custom role in this list is in use, it cannot be removed from the list until the scope RBACRolebindings using it are deleted.
  const GetFeatureSpecRbacrolebindingactuation({
    required this.allowedCustomRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCustomRoles': allowedCustomRoles,
    };
  }

  factory GetFeatureSpecRbacrolebindingactuation.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecRbacrolebindingactuation(
      allowedCustomRoles: pulumi.Input.fromValue((map['allowedCustomRoles'] as List).cast<String>()),
    );
  }
}

