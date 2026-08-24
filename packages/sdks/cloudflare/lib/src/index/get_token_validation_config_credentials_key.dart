// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTokenValidationConfigCredentialsKey {
  /// Algorithm
  /// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512", "ES256", "ES384", "HS256", "HS384", "HS512".
  final pulumi.Input<String> alg;
  /// Curve
  /// Available values: "P-256", "P-384".
  final pulumi.Input<String> crv;
  /// RSA exponent
  final pulumi.Input<String> e;
  /// Key ID
  final pulumi.Input<String> kid;
  /// Key Type
  /// Available values: "RSA", "EC", "oct".
  final pulumi.Input<String> kty;
  /// RSA modulus
  final pulumi.Input<String> n;
  /// X EC coordinate
  final pulumi.Input<String> x;
  /// Y EC coordinate
  final pulumi.Input<String> y;

  /// Creates a new [GetTokenValidationConfigCredentialsKey].
  /// [alg] Algorithm
  /// [crv] Curve
  /// [e] RSA exponent
  /// [kid] Key ID
  /// [kty] Key Type
  /// [n] RSA modulus
  /// [x] X EC coordinate
  /// [y] Y EC coordinate
  const GetTokenValidationConfigCredentialsKey({
    required this.alg,
    required this.crv,
    required this.e,
    required this.kid,
    required this.kty,
    required this.n,
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alg': alg,
      'crv': crv,
      'e': e,
      'kid': kid,
      'kty': kty,
      'n': n,
      'x': x,
      'y': y,
    };
  }

  factory GetTokenValidationConfigCredentialsKey.fromMap(Map<String, dynamic> map) {
    return GetTokenValidationConfigCredentialsKey(
      alg: pulumi.Input.fromValue(map['alg'] as String),
      crv: pulumi.Input.fromValue(map['crv'] as String),
      e: pulumi.Input.fromValue(map['e'] as String),
      kid: pulumi.Input.fromValue(map['kid'] as String),
      kty: pulumi.Input.fromValue(map['kty'] as String),
      n: pulumi.Input.fromValue(map['n'] as String),
      x: pulumi.Input.fromValue(map['x'] as String),
      y: pulumi.Input.fromValue(map['y'] as String),
    );
  }
}
