// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterOidcConfig {
  /// A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://`
  final pulumi.Input<String> issuerUrl;
  /// OIDC verification keys in JWKS format (RFC 7517).
  final pulumi.Input<String>? jwks;

  /// Creates a new [AttachedClusterOidcConfig].
  /// [issuerUrl] A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://`
  /// [jwks] OIDC verification keys in JWKS format (RFC 7517).
  const AttachedClusterOidcConfig({
    required this.issuerUrl,
    this.jwks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerUrl': issuerUrl,
      'jwks': ?jwks,
    };
  }

  factory AttachedClusterOidcConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterOidcConfig(
      issuerUrl: pulumi.Input.fromValue(map['issuerUrl'] as String),
      jwks: (() { final guardedValue = map['jwks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

