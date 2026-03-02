// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigOauth2JwtBearerJwtClaims {
  /// Value for the "aud" claim.
  ///
  /// <a name="nested_auth_config_oauth2_client_credentials"></a>The `oauth2_client_credentials` block supports:
  final pulumi.Input<String>? audience;
  /// Value for the "iss" claim.
  final pulumi.Input<String>? issuer;
  /// Value for the "sub" claim.
  final pulumi.Input<String>? subject;

  /// Creates a new [ConnectionAuthConfigOauth2JwtBearerJwtClaims].
  /// [audience] Value for the "aud" claim.
  /// [issuer] Value for the "iss" claim.
  /// [subject] Value for the "sub" claim.
  ConnectionAuthConfigOauth2JwtBearerJwtClaims({
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
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
    );
  }
}

