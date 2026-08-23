// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication parameters to provide to the specified resource or URL that requires a username and password. Currently, only Basic HTTP authentication (https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.
class BasicAuthentication {
  /// The password to use when authenticating with the HTTP server.
  final pulumi.Input<String>? password;
  /// The username to use when authenticating with the HTTP server.
  final pulumi.Input<String>? username;

  /// Creates a new [BasicAuthentication].
  /// [password] The password to use when authenticating with the HTTP server.
  /// [username] The username to use when authenticating with the HTTP server.
  const BasicAuthentication({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory BasicAuthentication.fromMap(Map<String, dynamic> map) {
    return BasicAuthentication(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
