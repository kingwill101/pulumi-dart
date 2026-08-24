// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupsResultIsDefaultEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
