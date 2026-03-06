// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponseGkehubV1alpha {
  /// The current state of the Membership resource.
  final pulumi.Input<String> code;

  /// Creates a new [MembershipStateResponseGkehubV1alpha].
  /// [code] The current state of the Membership resource.
  const MembershipStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory MembershipStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponseGkehubV1alpha(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

