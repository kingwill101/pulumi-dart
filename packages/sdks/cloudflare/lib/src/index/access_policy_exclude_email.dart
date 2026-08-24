// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessPolicyExcludeEmail].
  /// [email] The email of the user.
  const AccessPolicyExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessPolicyExcludeEmail.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
