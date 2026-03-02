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
  AttachedClusterOidcConfig({
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
      issuerUrl: (map['issuerUrl'] as String).input(),
      jwks: map['jwks'] == null ? null : (map['jwks']! as String).input(),
    );
  }
}

