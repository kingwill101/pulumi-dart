// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_policy_definition.dart';

/// {@template pulumi_index_oidc_issuer_args_doc}
/// The set of arguments for OidcIssuer.
/// {@endtemplate}
/// {@macro pulumi_index_oidc_issuer_args_doc}
class OidcIssuerArgs {
  /// The maximum duration of the Pulumi access token working after an exchange, specified in seconds.
  final pulumi.Input<int>? maxExpirationSeconds;
  /// Issuer name.
  final pulumi.Input<String> name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// The auth policies for this Oidc Issuer.
  final pulumi.Input<List<AuthPolicyDefinition>>? policies;
  /// The thumbprints of issuer's TLS certificates. By default, Pulumi will store the thumbprint of the certificate used to serve the OpenID configuration. If the provider uses multiple certificates to serve content, it is required to manually configure these.
  final pulumi.Input<List<String>>? thumbprints;
  /// The OIDC issuer URL.
  final pulumi.Input<String> url;

  /// Creates a new [OidcIssuerArgs].
  /// [maxExpirationSeconds] The maximum duration of the Pulumi access token working after an exchange, specified in seconds.
  /// [name] Issuer name.
  /// [organization] Organization name.
  /// [policies] The auth policies for this Oidc Issuer.
  /// [thumbprints] The thumbprints of issuer's TLS certificates. By default, Pulumi will store the thumbprint of the certificate used to serve the OpenID configuration. If the provider uses multiple certificates to serve content, it is required to manually configure these.
  /// [url] The OIDC issuer URL.
  const OidcIssuerArgs({
    this.maxExpirationSeconds,
    required this.name,
    required this.organization,
    this.policies,
    this.thumbprints,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExpirationSeconds': ?maxExpirationSeconds,
      'name': name,
      'organization': organization,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<AuthPolicyDefinition>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<AuthPolicyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thumbprints': ?thumbprints,
      'url': url,
    };
  }

  factory OidcIssuerArgs.fromMap(Map<String, dynamic> map) {
    return OidcIssuerArgs(
      maxExpirationSeconds: (() { final guardedValue = map['maxExpirationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthPolicyDefinition>(guardedValue, (value) => AuthPolicyDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      thumbprints: (() { final guardedValue = map['thumbprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

