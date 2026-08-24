// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessPoliciesResultIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
