// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessApplicationPolicyIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
