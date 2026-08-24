// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupIncludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupIncludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
