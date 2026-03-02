// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials to connect to VMMServer.
class VMMServerPropertiesCredentials {
  /// Credentials to use to connect to VMMServer.
  final pulumi.Input<String>? password;
  /// Username to use to connect to VMMServer.
  final pulumi.Input<String>? username;

  /// Creates a new [VMMServerPropertiesCredentials].
  /// [password] Credentials to use to connect to VMMServer.
  /// [username] Username to use to connect to VMMServer.
  VMMServerPropertiesCredentials({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory VMMServerPropertiesCredentials.fromMap(Map<String, dynamic> map) {
    return VMMServerPropertiesCredentials(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

