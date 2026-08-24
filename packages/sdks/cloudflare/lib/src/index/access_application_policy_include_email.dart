// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessApplicationPolicyIncludeEmail].
  /// [email] The email of the user.
  const AccessApplicationPolicyIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessApplicationPolicyIncludeEmail.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
