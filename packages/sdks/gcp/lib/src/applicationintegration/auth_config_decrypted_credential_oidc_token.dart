// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialOidcToken {
  /// Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  final pulumi.Input<String?>? audience;
  /// The service account email to be used as the identity for the token.
  final pulumi.Input<String?>? serviceAccountEmail;
  /// (Output)
  /// ID token obtained for the service account.
  final pulumi.Input<String?>? token;
  /// (Output)
  /// The approximate time until the token retrieved is valid.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? tokenExpireTime;

  /// Creates a new [AuthConfigDecryptedCredentialOidcToken].
  /// [audience] Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  /// [serviceAccountEmail] The service account email to be used as the identity for the token.
  /// [token] (Output)
  /// [tokenExpireTime] (Output)
  const AuthConfigDecryptedCredentialOidcToken({
    this.audience,
    this.serviceAccountEmail,
    this.token,
    this.tokenExpireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccountEmail': ?serviceAccountEmail,
      'token': ?token,
      'tokenExpireTime': ?tokenExpireTime,
    };
  }

  factory AuthConfigDecryptedCredentialOidcToken.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOidcToken(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenExpireTime: (() { final guardedValue = map['tokenExpireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
