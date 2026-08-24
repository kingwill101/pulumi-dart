// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessGroupExcludeEmail].
  /// [email] The email of the user.
  const AccessGroupExcludeEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessGroupExcludeEmail.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
