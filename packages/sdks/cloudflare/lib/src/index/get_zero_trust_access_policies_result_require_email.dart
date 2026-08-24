// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessPoliciesResultRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
