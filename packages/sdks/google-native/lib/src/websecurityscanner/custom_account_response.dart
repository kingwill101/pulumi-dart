// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes authentication configuration that uses a custom account.
class CustomAccountResponse {
  /// The login form URL of the website.
  final pulumi.Input<String> loginUrl;
  /// Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final pulumi.Input<String> password;
  /// The user name of the custom account.
  final pulumi.Input<String> username;

  /// Creates a new [CustomAccountResponse].
  /// [loginUrl] The login form URL of the website.
  /// [password] Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  /// [username] The user name of the custom account.
  const CustomAccountResponse({
    required this.loginUrl,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginUrl': loginUrl,
      'password': password,
      'username': username,
    };
  }

  factory CustomAccountResponse.fromMap(Map<String, dynamic> map) {
    return CustomAccountResponse(
      loginUrl: pulumi.Input.fromValue(map['loginUrl'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

