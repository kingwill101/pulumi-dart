// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponse {
  /// The current state of the MembershipBinding resource.
  final pulumi.Input<String> code;

  /// Creates a new [MembershipBindingLifecycleStateResponse].
  /// [code] The current state of the MembershipBinding resource.
  const MembershipBindingLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory MembershipBindingLifecycleStateResponse.fromMap(Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

