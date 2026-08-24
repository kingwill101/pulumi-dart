// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyRequireEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessApplicationsResultPolicyRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyRequireEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
