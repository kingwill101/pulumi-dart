// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [GetZeroTrustAccessGroupsResultExcludeEmail].
  /// [email] The email of the user.
  const GetZeroTrustAccessGroupsResultExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetZeroTrustAccessGroupsResultExcludeEmail.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
