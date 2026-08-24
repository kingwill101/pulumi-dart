// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessApplicationPolicyRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
