// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication parameters to provide to the specified resource or URL that requires a username and password. Currently, only Basic HTTP authentication (https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.
class BasicAuthenticationResponse {
  /// The password to use when authenticating with the HTTP server.
  final pulumi.Input<String> password;
  /// The username to use when authenticating with the HTTP server.
  final pulumi.Input<String> username;

  /// Creates a new [BasicAuthenticationResponse].
  /// [password] The password to use when authenticating with the HTTP server.
  /// [username] The username to use when authenticating with the HTTP server.
  const BasicAuthenticationResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory BasicAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return BasicAuthenticationResponse(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

