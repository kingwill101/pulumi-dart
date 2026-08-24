// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupExcludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupExcludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
