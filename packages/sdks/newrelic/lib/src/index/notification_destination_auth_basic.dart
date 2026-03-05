// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationDestinationAuthBasic {
  /// Specifies an authentication password for use with a destination.
  final pulumi.Input<String> password;
  /// The username of the basic auth.
  final pulumi.Input<String> user;

  /// Creates a new [NotificationDestinationAuthBasic].
  /// [password] Specifies an authentication password for use with a destination.
  /// [user] The username of the basic auth.
  NotificationDestinationAuthBasic({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'user': user,
    };
  }

  factory NotificationDestinationAuthBasic.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationAuthBasic(
      password: pulumi.Input.fromValue(map['password'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}

