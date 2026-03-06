// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMembershipBindingState {
  /// Code describes the state of a MembershipBinding resource.
  final pulumi.Input<String> code;

  /// Creates a new [GetMembershipBindingState].
  /// [code] Code describes the state of a MembershipBinding resource.
  const GetMembershipBindingState({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory GetMembershipBindingState.fromMap(Map<String, dynamic> map) {
    return GetMembershipBindingState(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

