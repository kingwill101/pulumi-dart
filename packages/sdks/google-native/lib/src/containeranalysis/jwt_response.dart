// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JwtResponse {
  /// The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  final pulumi.Input<String> compactJwt;

  /// Creates a new [JwtResponse].
  /// [compactJwt] The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  const JwtResponse({
    required this.compactJwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactJwt': compactJwt,
    };
  }

  factory JwtResponse.fromMap(Map<String, dynamic> map) {
    return JwtResponse(
      compactJwt: pulumi.Input.fromValue(map['compactJwt'] as String),
    );
  }
}

