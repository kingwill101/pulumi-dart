// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessPolicyExcludeEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessPolicyExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessPolicyExcludeEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
