// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupIsDefaultEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
