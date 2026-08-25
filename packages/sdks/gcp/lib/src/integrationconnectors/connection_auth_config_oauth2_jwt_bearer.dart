// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_oauth2_jwt_bearer_client_key.dart';
import 'connection_auth_config_oauth2_jwt_bearer_jwt_claims.dart';

class ConnectionAuthConfigOauth2JwtBearer {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// This private key will be used to sign JWTs used for the jwt-bearer authorization grant.
  /// Specified in the form as: projects/*/secrets/*/versions/*.
  final pulumi.Input<ConnectionAuthConfigOauth2JwtBearerClientKey?>? clientKey;
  /// JwtClaims providers fields to generate the token.
  final pulumi.Input<ConnectionAuthConfigOauth2JwtBearerJwtClaims?>? jwtClaims;

  /// Creates a new [ConnectionAuthConfigOauth2JwtBearer].
  /// [clientKey] Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.
  /// [jwtClaims] JwtClaims providers fields to generate the token.
  const ConnectionAuthConfigOauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientKey': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2JwtBearerClientKey, Map<String, dynamic>>(clientKey, (value) => value.toMap()),
      'jwtClaims': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2JwtBearerJwtClaims, Map<String, dynamic>>(jwtClaims, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthConfigOauth2JwtBearer.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2JwtBearer(
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigOauth2JwtBearerClientKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jwtClaims: (() { final guardedValue = map['jwtClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigOauth2JwtBearerJwtClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
