// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenValidationConfigCredentialsKey {
  /// Algorithm
  /// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512", "ES256", "ES384", "HS256", "HS384", "HS512".
  final pulumi.Input<String> alg;
  /// Curve
  /// Available values: "P-256", "P-384".
  final pulumi.Input<String?>? crv;
  /// RSA exponent
  final pulumi.Input<String?>? e;
  /// Symmetric key material. Required for create and PUT update requests.
  final pulumi.Input<String?>? k;
  /// Key ID
  final pulumi.Input<String> kid;
  /// Key Type
  /// Available values: "RSA", "EC", "oct".
  final pulumi.Input<String> kty;
  /// RSA modulus
  final pulumi.Input<String?>? n;
  /// X EC coordinate
  final pulumi.Input<String?>? x;
  /// Y EC coordinate
  final pulumi.Input<String?>? y;

  /// Creates a new [TokenValidationConfigCredentialsKey].
  /// [alg] Algorithm
  /// [crv] Curve
  /// [e] RSA exponent
  /// [k] Symmetric key material. Required for create and PUT update requests.
  /// [kid] Key ID
  /// [kty] Key Type
  /// [n] RSA modulus
  /// [x] X EC coordinate
  /// [y] Y EC coordinate
  const TokenValidationConfigCredentialsKey({
    required this.alg,
    this.crv,
    this.e,
    this.k,
    required this.kid,
    required this.kty,
    this.n,
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alg': alg,
      'crv': ?crv,
      'e': ?e,
      'k': ?k,
      'kid': kid,
      'kty': kty,
      'n': ?n,
      'x': ?x,
      'y': ?y,
    };
  }

  factory TokenValidationConfigCredentialsKey.fromMap(Map<String, dynamic> map) {
    return TokenValidationConfigCredentialsKey(
      alg: pulumi.Input.fromValue(map['alg'] as String),
      crv: (() { final guardedValue = map['crv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      e: (() { final guardedValue = map['e']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      k: (() { final guardedValue = map['k']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kid: pulumi.Input.fromValue(map['kid'] as String),
      kty: pulumi.Input.fromValue(map['kty'] as String),
      n: (() { final guardedValue = map['n']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
