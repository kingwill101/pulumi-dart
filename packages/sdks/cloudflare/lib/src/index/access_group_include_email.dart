// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessGroupIncludeEmail].
  /// [email] The email of the user.
  const AccessGroupIncludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessGroupIncludeEmail.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
