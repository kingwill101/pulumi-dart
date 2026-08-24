// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessPolicyRequireEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessPolicyRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessPolicyRequireEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
