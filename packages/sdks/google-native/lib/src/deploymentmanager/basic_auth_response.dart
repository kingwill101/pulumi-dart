// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Basic Auth used as a credential.
class BasicAuthResponse {
  final pulumi.Input<String> password;
  final pulumi.Input<String> user;

  /// Creates a new [BasicAuthResponse].
  /// [password] Required.
  /// [user] Required.
  const BasicAuthResponse({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'user': user,
    };
  }

  factory BasicAuthResponse.fromMap(Map<String, dynamic> map) {
    return BasicAuthResponse(
      password: pulumi.Input.fromValue(map['password'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
