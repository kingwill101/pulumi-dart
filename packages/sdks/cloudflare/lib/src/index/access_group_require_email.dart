// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireEmail {
  /// The email of the user.
  final pulumi.Input<String> email;

  /// Creates a new [AccessGroupRequireEmail].
  /// [email] The email of the user.
  const AccessGroupRequireEmail({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AccessGroupRequireEmail.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireEmail(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
