// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes authentication configuration that uses a Google account.
class GoogleAccountResponseWebsecurityscannerV1alpha {
  /// Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  final pulumi.Input<String> password;
  /// The user name of the Google account.
  final pulumi.Input<String> username;

  /// Creates a new [GoogleAccountResponseWebsecurityscannerV1alpha].
  /// [password] Input only. The password of the Google account. The credential is stored encrypted and not returned in any response nor included in audit logs.
  /// [username] The user name of the Google account.
  const GoogleAccountResponseWebsecurityscannerV1alpha({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GoogleAccountResponseWebsecurityscannerV1alpha.fromMap(Map<String, dynamic> map) {
    return GoogleAccountResponseWebsecurityscannerV1alpha(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
