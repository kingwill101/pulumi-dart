// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembershipRbacRoleBindingState {
  /// (Output)
  /// Code describes the state of a RBAC Role Binding resource.
  final pulumi.Input<String>? code;

  /// Creates a new [MembershipRbacRoleBindingState].
  /// [code] (Output)
  const MembershipRbacRoleBindingState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory MembershipRbacRoleBindingState.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingState(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

