// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupsResultRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
