// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessPolicyRequireEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessPolicyRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessPolicyRequireEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
