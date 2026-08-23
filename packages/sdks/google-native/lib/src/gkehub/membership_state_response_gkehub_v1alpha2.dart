// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MembershipState describes the state of a Membership resource.
class MembershipStateResponseGkehubV1alpha2 {
  /// The current state of the Membership resource.
  final pulumi.Input<String> code;

  /// Creates a new [MembershipStateResponseGkehubV1alpha2].
  /// [code] The current state of the Membership resource.
  const MembershipStateResponseGkehubV1alpha2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory MembershipStateResponseGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponseGkehubV1alpha2(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}
