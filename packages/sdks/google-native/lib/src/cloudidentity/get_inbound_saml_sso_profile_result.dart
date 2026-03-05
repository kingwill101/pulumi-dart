// ignore_for_file: unused_element, unnecessary_cast

import 'saml_idp_config_response.dart';
import 'saml_sp_config_response.dart';

/// Result data returned by getInboundSamlSsoProfile.
class GetInboundSamlSsoProfileResult {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final String customer;
  /// Human-readable name of the SAML SSO profile.
  final String displayName;
  /// SAML identity provider configuration.
  final SamlIdpConfigResponse idpConfig;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  final String name;
  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final SamlSpConfigResponse spConfig;

  /// Creates a new [GetInboundSamlSsoProfileResult].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  /// [name] [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  /// [spConfig] SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  GetInboundSamlSsoProfileResult({
    required this.customer,
    required this.displayName,
    required this.idpConfig,
    required this.name,
    required this.spConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': customer,
      'displayName': displayName,
      'idpConfig': idpConfig.toMap(),
      'name': name,
      'spConfig': spConfig.toMap(),
    };
  }

  factory GetInboundSamlSsoProfileResult.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileResult(
      customer: map['customer'] as String,
      displayName: map['displayName'] as String,
      idpConfig: SamlIdpConfigResponse.fromMap((map['idpConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      spConfig: SamlSpConfigResponse.fromMap((map['spConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

