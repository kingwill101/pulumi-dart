// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessApplicationPolicyExcludeEmail].
  /// [email] The email of the user.
  const AccessApplicationPolicyExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessApplicationPolicyExcludeEmail.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
