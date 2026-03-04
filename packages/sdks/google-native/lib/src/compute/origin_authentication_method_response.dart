// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt_response.dart';

/// [Deprecated] Configuration for the origin authentication method. Configuration for the origin authentication method.
class OriginAuthenticationMethodResponse {
  final pulumi.Input<JwtResponse> jwt;

  /// Creates a new [OriginAuthenticationMethodResponse].
  /// [jwt] Required.
  OriginAuthenticationMethodResponse({required this.jwt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwt': pulumi.Input.mapInputValue<JwtResponse, Map<String, dynamic>>(
        jwt,
        (value) => value.toMap(),
      ),
    };
  }

  factory OriginAuthenticationMethodResponse.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationMethodResponse(
      jwt: pulumi.Input.fromValue(
        JwtResponse.fromMap((map['jwt']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
