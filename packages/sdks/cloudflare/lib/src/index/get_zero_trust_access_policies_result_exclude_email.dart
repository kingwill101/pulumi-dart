// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessPoliciesResultExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
