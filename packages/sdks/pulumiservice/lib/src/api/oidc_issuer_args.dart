// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_auth_oidc_issuer_args_doc}
/// The set of arguments for OidcIssuer.
/// {@endtemplate}
/// {@macro pulumi_api_auth_oidc_issuer_args_doc}
class OidcIssuerArgs {
  /// The OIDC issuer identifier
  final pulumi.Input<String>? issuerId;
  /// The JSON Web Key Set for the OIDC issuer.
  final pulumi.Input<dynamic>? jwks;
  /// The maximum token expiration time in seconds.
  final pulumi.Input<int>? maxExpiration;
  /// The display name of the OIDC issuer.
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// SHA-1 certificate thumbprints used to verify the OIDC issuer's TLS certificate.
  final pulumi.Input<List<String>>? thumbprints;
  /// The URL of the OIDC issuer.
  final pulumi.Input<String> url;

  /// Creates a new [OidcIssuerArgs].
  /// [issuerId] The OIDC issuer identifier
  /// [jwks] The JSON Web Key Set for the OIDC issuer.
  /// [maxExpiration] The maximum token expiration time in seconds.
  /// [name] The display name of the OIDC issuer.
  /// [orgName] The organization name
  /// [thumbprints] SHA-1 certificate thumbprints used to verify the OIDC issuer's TLS certificate.
  /// [url] The URL of the OIDC issuer.
  const OidcIssuerArgs({
    this.issuerId,
    this.jwks,
    this.maxExpiration,
    required this.name,
    required this.orgName,
    this.thumbprints,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerId': ?issuerId,
      'jwks': ?jwks,
      'maxExpiration': ?maxExpiration,
      'name': name,
      'orgName': orgName,
      'thumbprints': ?thumbprints,
      'url': url,
    };
  }

  factory OidcIssuerArgs.fromMap(Map<String, dynamic> map) {
    return OidcIssuerArgs(
      issuerId: (() { final guardedValue = map['issuerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jwks: (() { final guardedValue = map['jwks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxExpiration: (() { final guardedValue = map['maxExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      thumbprints: (() { final guardedValue = map['thumbprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
