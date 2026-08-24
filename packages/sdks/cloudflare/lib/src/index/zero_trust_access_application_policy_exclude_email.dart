// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessApplicationPolicyExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
