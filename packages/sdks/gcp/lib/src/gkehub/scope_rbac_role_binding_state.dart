// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScopeRbacRoleBindingState {
  /// (Output)
  /// Code describes the state of a RBAC Role Binding resource.
  final pulumi.Input<String>? code;

  /// Creates a new [ScopeRbacRoleBindingState].
  /// [code] (Output)
  const ScopeRbacRoleBindingState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ScopeRbacRoleBindingState.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingState(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
