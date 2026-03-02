// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes authentication configuration that uses a custom account.
class CustomAccountResponseWebsecurityscannerV1beta {
  /// The login form URL of the website.
  final pulumi.Input<String> loginUrl;
  /// Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final pulumi.Input<String> password;
  /// The user name of the custom account.
  final pulumi.Input<String> username;

  /// Creates a new [CustomAccountResponseWebsecurityscannerV1beta].
  /// [loginUrl] The login form URL of the website.
  /// [password] Input only. The password of the custom account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  /// [username] The user name of the custom account.
  CustomAccountResponseWebsecurityscannerV1beta({
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

  factory CustomAccountResponseWebsecurityscannerV1beta.fromMap(Map<String, dynamic> map) {
    return CustomAccountResponseWebsecurityscannerV1beta(
      loginUrl: (map['loginUrl'] as String).input(),
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

