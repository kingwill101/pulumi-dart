// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponseGkehubV1alpha {
  /// The current state of the MembershipBinding resource.
  final pulumi.Input<String> code;

  /// Creates a new [MembershipBindingLifecycleStateResponseGkehubV1alpha].
  /// [code] The current state of the MembershipBinding resource.
  const MembershipBindingLifecycleStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory MembershipBindingLifecycleStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}
