// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialUsernameAndPassword {
  /// Password to be used.
  ///
  /// &lt;a name="nestedDecryptedCredentialOauth2AuthorizationCode"&gt;&lt;/a&gt;The `oauth2AuthorizationCode` block supports:
  final pulumi.Input<String>? password;
  /// Username to be used.
  final pulumi.Input<String>? username;

  /// Creates a new [AuthConfigDecryptedCredentialUsernameAndPassword].
  /// [password] Password to be used.
  /// [username] Username to be used.
  const AuthConfigDecryptedCredentialUsernameAndPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory AuthConfigDecryptedCredentialUsernameAndPassword.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialUsernameAndPassword(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
