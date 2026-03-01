// ignore_for_file: unused_element, unnecessary_cast

import 'connection_auth_config_oauth2_jwt_bearer_client_key.dart';
import 'connection_auth_config_oauth2_jwt_bearer_jwt_claims.dart';

class ConnectionAuthConfigOauth2JwtBearer {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// This private key will be used to sign JWTs used for the jwt-bearer authorization grant.
  /// Specified in the form as: projects/*/secrets/*/versions/*.
  final ConnectionAuthConfigOauth2JwtBearerClientKey? clientKey;
  /// JwtClaims providers fields to generate the token.
  final ConnectionAuthConfigOauth2JwtBearerJwtClaims? jwtClaims;

  /// Creates a new [ConnectionAuthConfigOauth2JwtBearer].
  /// [clientKey] Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// [jwtClaims] JwtClaims providers fields to generate the token.
  ConnectionAuthConfigOauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientKey': ?clientKey == null ? null : clientKey!.toMap(),
      'jwtClaims': ?jwtClaims == null ? null : jwtClaims!.toMap(),
    };
  }

  factory ConnectionAuthConfigOauth2JwtBearer.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2JwtBearer(
      clientKey: map['clientKey'] == null ? null : ConnectionAuthConfigOauth2JwtBearerClientKey.fromMap((map['clientKey'] as Map).cast<String, dynamic>()),
      jwtClaims: map['jwtClaims'] == null ? null : ConnectionAuthConfigOauth2JwtBearerJwtClaims.fromMap((map['jwtClaims'] as Map).cast<String, dynamic>()),
    );
  }
}

