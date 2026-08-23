// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigOauth2JwtBearerJwtClaims {
  /// Value for the "aud" claim.
  ///
  /// &lt;a name="nestedAuthConfigOauth2ClientCredentials"&gt;&lt;/a&gt;The `oauth2ClientCredentials` block supports:
  final pulumi.Input<String>? audience;
  /// Value for the "iss" claim.
  final pulumi.Input<String>? issuer;
  /// Value for the "sub" claim.
  final pulumi.Input<String>? subject;

  /// Creates a new [ConnectionAuthConfigOauth2JwtBearerJwtClaims].
  /// [audience] Value for the "aud" claim.
  /// [issuer] Value for the "iss" claim.
  /// [subject] Value for the "sub" claim.
  const ConnectionAuthConfigOauth2JwtBearerJwtClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'issuer': ?issuer,
      'subject': ?subject,
    };
  }

  factory ConnectionAuthConfigOauth2JwtBearerJwtClaims.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2JwtBearerJwtClaims(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
