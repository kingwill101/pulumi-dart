// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessPolicyIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
