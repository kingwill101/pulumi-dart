// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [ZeroTrustAccessGroupExcludeEmail].
  /// [email] The email of the user.
  const ZeroTrustAccessGroupExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ZeroTrustAccessGroupExcludeEmail.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
