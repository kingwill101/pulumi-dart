// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessPolicyIncludeEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessPolicyIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessPolicyIncludeEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
