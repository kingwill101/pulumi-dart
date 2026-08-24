// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupsResultIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
