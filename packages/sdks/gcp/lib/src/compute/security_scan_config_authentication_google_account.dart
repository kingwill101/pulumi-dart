// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityScanConfigAuthenticationGoogleAccount {
  /// The password of the Google account. The credential is stored encrypted
  /// in GCP.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> password;
  /// The user name of the Google account.
  final pulumi.Input<String> username;

  /// Creates a new [SecurityScanConfigAuthenticationGoogleAccount].
  /// [password] The password of the Google account. The credential is stored encrypted
  /// [username] The user name of the Google account.
  SecurityScanConfigAuthenticationGoogleAccount({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory SecurityScanConfigAuthenticationGoogleAccount.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigAuthenticationGoogleAccount(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

