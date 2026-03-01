// ignore_for_file: unused_element, unnecessary_cast


/// MembershipState describes the state of a Membership resource.
class MembershipStateResponseGkehubV1alpha {
  /// The current state of the Membership resource.
  final String code;

  /// Creates a new [MembershipStateResponseGkehubV1alpha].
  /// [code] The current state of the Membership resource.
  MembershipStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory MembershipStateResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponseGkehubV1alpha(
      code: map['code'] as String,
    );
  }
}

