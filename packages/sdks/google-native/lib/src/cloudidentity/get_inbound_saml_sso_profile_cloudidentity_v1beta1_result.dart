// ignore_for_file: unused_element, unnecessary_cast

import 'saml_idp_config_response_cloudidentity_v1beta1.dart';
import 'saml_sp_config_response_cloudidentity_v1beta1.dart';

/// Result data returned by getInboundSamlSsoProfile.
class GetInboundSamlSsoProfileCloudidentityV1beta1Result {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final String customer;
  /// Human-readable name of the SAML SSO profile.
  final String displayName;
  /// SAML identity provider configuration.
  final SamlIdpConfigResponseCloudidentityV1beta1 idpConfig;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  final String name;
  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final SamlSpConfigResponseCloudidentityV1beta1 spConfig;

  /// Creates a new [GetInboundSamlSsoProfileCloudidentityV1beta1Result].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  /// [name] [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  /// [spConfig] SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  const GetInboundSamlSsoProfileCloudidentityV1beta1Result({
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

  factory GetInboundSamlSsoProfileCloudidentityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileCloudidentityV1beta1Result(
      customer: map['customer'] as String,
      displayName: map['displayName'] as String,
      idpConfig: SamlIdpConfigResponseCloudidentityV1beta1.fromMap((map['idpConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      spConfig: SamlSpConfigResponseCloudidentityV1beta1.fromMap((map['spConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

