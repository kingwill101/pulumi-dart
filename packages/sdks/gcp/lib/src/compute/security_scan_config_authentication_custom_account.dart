// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityScanConfigAuthenticationCustomAccount {
  /// The login form URL of the website.
  final pulumi.Input<String> loginUrl;
  /// The password of the custom account. The credential is stored encrypted
  /// in GCP.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> password;
  /// The user name of the custom account.
  final pulumi.Input<String> username;

  /// Creates a new [SecurityScanConfigAuthenticationCustomAccount].
  /// [loginUrl] The login form URL of the website.
  /// [password] The password of the custom account. The credential is stored encrypted
  /// [username] The user name of the custom account.
  SecurityScanConfigAuthenticationCustomAccount({
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

  factory SecurityScanConfigAuthenticationCustomAccount.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigAuthenticationCustomAccount(
      loginUrl: pulumi.Input.fromValue(map['loginUrl'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

