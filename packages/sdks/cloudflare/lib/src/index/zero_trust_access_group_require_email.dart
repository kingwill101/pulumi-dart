// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessGroupRequireEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessGroupRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessGroupRequireEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
