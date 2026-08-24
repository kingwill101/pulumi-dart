// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessApplicationPolicyRequireEmail].
  /// [email] The email of the user.
  const AccessApplicationPolicyRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessApplicationPolicyRequireEmail.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
