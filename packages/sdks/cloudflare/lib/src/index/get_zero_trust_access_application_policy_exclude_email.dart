// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyExcludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessApplicationPolicyExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyExcludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
