// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenValidationConfigCredentialsKey {
  /// Algorithm
  /// Available values: "RS256", "RS384", "RS512", "PS256", "PS384", "PS512", "ES256", "ES384", "HS256", "HS384", "HS512".
  final pulumi.Input<String> alg;
  /// For `alg: ES256` or `alg: ES384`: Curve
  /// Available values: "P-256", "P-384".
  final pulumi.Input<String?>? crv;
  /// For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg: PS384` or `alg: PS512`: RSA exponent
  final pulumi.Input<String?>? e;
  /// For `alg: HS256` or `alg: HS384` or `alg: HS512`: Symmetric key material. Required for create and PUT update requests.
  final pulumi.Input<String?>? k;
  /// Key ID
  final pulumi.Input<String> kid;
  /// Key Type
  /// Available values: "RSA", "EC", "oct".
  final pulumi.Input<String> kty;
  /// For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg: PS384` or `alg: PS512`: RSA modulus
  final pulumi.Input<String?>? n;
  /// For `alg: ES256` or `alg: ES384`: X EC coordinate
  final pulumi.Input<String?>? x;
  /// For `alg: ES256` or `alg: ES384`: Y EC coordinate
  final pulumi.Input<String?>? y;

  /// Creates a new [TokenValidationConfigCredentialsKey].
  /// [alg] Algorithm
  /// [crv] For `alg: ES256` or `alg: ES384`: Curve
  /// [e] For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg: PS384` or `alg: PS512`: RSA exponent
  /// [k] For `alg: HS256` or `alg: HS384` or `alg: HS512`: Symmetric key material. Required for create and PUT update requests.
  /// [kid] Key ID
  /// [kty] Key Type
  /// [n] For `alg: RS256` or `alg: RS384` or `alg: RS512` or `alg: PS256` or `alg: PS384` or `alg: PS512`: RSA modulus
  /// [x] For `alg: ES256` or `alg: ES384`: X EC coordinate
  /// [y] For `alg: ES256` or `alg: ES384`: Y EC coordinate
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
