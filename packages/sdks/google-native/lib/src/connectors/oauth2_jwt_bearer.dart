// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt_claims.dart';
import 'secret.dart';

/// Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.
class Oauth2JwtBearer {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<Secret>? clientKey;
  /// JwtClaims providers fields to generate the token.
  final pulumi.Input<JwtClaims>? jwtClaims;

  /// Creates a new [Oauth2JwtBearer].
  /// [clientKey] Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  /// [jwtClaims] JwtClaims providers fields to generate the token.
  const Oauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientKey': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(clientKey, (value) => value.toMap()),
      'jwtClaims': ?pulumi.Input.mapOptionalInputValue<JwtClaims, Map<String, dynamic>>(jwtClaims, (value) => value.toMap()),
    };
  }

  factory Oauth2JwtBearer.fromMap(Map<String, dynamic> map) {
    return Oauth2JwtBearer(
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Secret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jwtClaims: (() { final guardedValue = map['jwtClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JwtClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

