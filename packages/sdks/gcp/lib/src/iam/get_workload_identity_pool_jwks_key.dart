// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolJwksKey {
  /// The algorithm intended for use with the key (e.g. `RS256`).
  final pulumi.Input<String> alg;
  /// The exponent for the RSA public key.
  final pulumi.Input<String> e;
  /// The unique identifier for the key.
  final pulumi.Input<String> kid;
  /// The key type (e.g. `RSA`).
  final pulumi.Input<String> kty;
  /// The modulus for the RSA public key.
  final pulumi.Input<String> n;
  /// The intended use of the public key (e.g. `sig`).
  final pulumi.Input<String> use;

  /// Creates a new [GetWorkloadIdentityPoolJwksKey].
  /// [alg] The algorithm intended for use with the key (e.g. `RS256`).
  /// [e] The exponent for the RSA public key.
  /// [kid] The unique identifier for the key.
  /// [kty] The key type (e.g. `RSA`).
  /// [n] The modulus for the RSA public key.
  /// [use] The intended use of the public key (e.g. `sig`).
  const GetWorkloadIdentityPoolJwksKey({
    required this.alg,
    required this.e,
    required this.kid,
    required this.kty,
    required this.n,
    required this.use,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alg': alg,
      'e': e,
      'kid': kid,
      'kty': kty,
      'n': n,
      'use': use,
    };
  }

  factory GetWorkloadIdentityPoolJwksKey.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolJwksKey(
      alg: pulumi.Input.fromValue(map['alg'] as String),
      e: pulumi.Input.fromValue(map['e'] as String),
      kid: pulumi.Input.fromValue(map['kid'] as String),
      kty: pulumi.Input.fromValue(map['kty'] as String),
      n: pulumi.Input.fromValue(map['n'] as String),
      use: pulumi.Input.fromValue(map['use'] as String),
    );
  }
}
