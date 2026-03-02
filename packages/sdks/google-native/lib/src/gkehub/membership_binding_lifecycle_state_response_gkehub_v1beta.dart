// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MembershipBindingLifecycleState describes the state of a Binding resource.
class MembershipBindingLifecycleStateResponseGkehubV1beta {
  /// The current state of the MembershipBinding resource.
  final pulumi.Input<String> code;

  /// Creates a new [MembershipBindingLifecycleStateResponseGkehubV1beta].
  /// [code] The current state of the MembershipBinding resource.
  MembershipBindingLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory MembershipBindingLifecycleStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return MembershipBindingLifecycleStateResponseGkehubV1beta(
      code: (map['code'] as String).input(),
    );
  }
}

