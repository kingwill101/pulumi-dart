// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupRequireEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupRequireEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
