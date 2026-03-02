// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialUsernameAndPassword {
  /// Password to be used.
  ///
  /// <a name="nested_decrypted_credential_oauth2_authorization_code"></a>The `oauth2_authorization_code` block supports:
  final pulumi.Input<String>? password;
  /// Username to be used.
  final pulumi.Input<String>? username;

  /// Creates a new [AuthConfigDecryptedCredentialUsernameAndPassword].
  /// [password] Password to be used.
  /// [username] Username to be used.
  AuthConfigDecryptedCredentialUsernameAndPassword({
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
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

