// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RBACRoleBindingLifecycleState describes the state of a RbacRoleBinding resource.
class RBACRoleBindingLifecycleStateResponseGkehubV1alpha {
  /// The current state of the rbacrolebinding resource.
  final pulumi.Input<String> code;

  /// Creates a new [RBACRoleBindingLifecycleStateResponseGkehubV1alpha].
  /// [code] The current state of the rbacrolebinding resource.
  const RBACRoleBindingLifecycleStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory RBACRoleBindingLifecycleStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return RBACRoleBindingLifecycleStateResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}
