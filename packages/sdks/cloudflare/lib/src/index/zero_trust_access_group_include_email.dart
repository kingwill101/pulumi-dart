// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessGroupIncludeEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessGroupIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessGroupIncludeEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
