// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialJwt {
  /// (Output)
  /// The token calculated by the header, payload and signature.
  final pulumi.Input<String>? jwt;
  /// Identifies which algorithm is used to generate the signature.
  final pulumi.Input<String>? jwtHeader;
  /// Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  final pulumi.Input<String>? jwtPayload;
  /// User's pre-shared secret to sign the token.
  final pulumi.Input<String>? secret;

  /// Creates a new [AuthConfigDecryptedCredentialJwt].
  /// [jwt] (Output)
  /// [jwtHeader] Identifies which algorithm is used to generate the signature.
  /// [jwtPayload] Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  /// [secret] User's pre-shared secret to sign the token.
  AuthConfigDecryptedCredentialJwt({
    this.jwt,
    this.jwtHeader,
    this.jwtPayload,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwt': ?jwt,
      'jwtHeader': ?jwtHeader,
      'jwtPayload': ?jwtPayload,
      'secret': ?secret,
    };
  }

  factory AuthConfigDecryptedCredentialJwt.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialJwt(
      jwt: map['jwt'] == null ? null : (map['jwt']! as String).input(),
      jwtHeader: map['jwtHeader'] == null ? null : (map['jwtHeader']! as String).input(),
      jwtPayload: map['jwtPayload'] == null ? null : (map['jwtPayload']! as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as String).input(),
    );
  }
}

