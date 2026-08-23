// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembershipBindingState {
  /// (Output)
  /// Code describes the state of a MembershipBinding resource.
  final pulumi.Input<String>? code;

  /// Creates a new [MembershipBindingState].
  /// [code] (Output)
  const MembershipBindingState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory MembershipBindingState.fromMap(Map<String, dynamic> map) {
    return MembershipBindingState(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
