// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialAuthToken {
  /// The token for the auth type.
  final pulumi.Input<String>? token;
  /// Authentication type, e.g. "Basic", "Bearer", etc.
  final pulumi.Input<String>? type;

  /// Creates a new [AuthConfigDecryptedCredentialAuthToken].
  /// [token] The token for the auth type.
  /// [type] Authentication type, e.g. "Basic", "Bearer", etc.
  const AuthConfigDecryptedCredentialAuthToken({
    this.token,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
      'type': ?type,
    };
  }

  factory AuthConfigDecryptedCredentialAuthToken.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialAuthToken(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

