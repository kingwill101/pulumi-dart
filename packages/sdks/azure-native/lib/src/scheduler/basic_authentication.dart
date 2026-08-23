// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BasicAuthentication {
  /// Gets or sets the password, return value will always be empty.
  final pulumi.Input<String>? password;
  /// Gets or sets the HTTP authentication type.
  /// Expected value is 'Basic'.
  final pulumi.Input<String> type;
  /// Gets or sets the username.
  final pulumi.Input<String>? username;

  /// Creates a new [BasicAuthentication].
  /// [password] Gets or sets the password, return value will always be empty.
  /// [type] Gets or sets the HTTP authentication type.
  /// [username] Gets or sets the username.
  const BasicAuthentication({
    this.password,
    required this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'type': type,
      'username': ?username,
    };
  }

  factory BasicAuthentication.fromMap(Map<String, dynamic> map) {
    return BasicAuthentication(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
