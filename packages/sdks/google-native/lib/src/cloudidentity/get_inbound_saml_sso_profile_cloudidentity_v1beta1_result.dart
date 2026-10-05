// ignore_for_file: unused_element, unnecessary_cast

import 'saml_idp_config_response_cloudidentity_v1beta1.dart';
import 'saml_sp_config_response_cloudidentity_v1beta1.dart';

/// Result data returned by getInboundSamlSsoProfile.
class GetInboundSamlSsoProfileCloudidentityV1beta1Result {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  final String? customer;
  /// Human-readable name of the SAML SSO profile.
  final String? displayName;
  /// SAML identity provider configuration.
  final SamlIdpConfigResponseCloudidentityV1beta1? idpConfig;
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  final String? name;
  /// SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  final SamlSpConfigResponseCloudidentityV1beta1? spConfig;

  /// Creates a new [GetInboundSamlSsoProfileCloudidentityV1beta1Result].
  /// [customer] Immutable. The customer. For example: `customers/C0123abc`.
  /// [displayName] Human-readable name of the SAML SSO profile.
  /// [idpConfig] SAML identity provider configuration.
  /// [name] [Resource name](https://cloud.google.com/apis/design/resource_names) of the SAML SSO profile.
  /// [spConfig] SAML service provider configuration for this SAML SSO profile. These are the service provider details provided by Google that should be configured on the corresponding identity provider.
  const GetInboundSamlSsoProfileCloudidentityV1beta1Result({
    this.customer,
    this.displayName,
    this.idpConfig,
    this.name,
    this.spConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer': ?customer,
      'displayName': ?displayName,
      'idpConfig': ?idpConfig?.toMap(),
      'name': ?name,
      'spConfig': ?spConfig?.toMap(),
    };
  }

  factory GetInboundSamlSsoProfileCloudidentityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlSsoProfileCloudidentityV1beta1Result(
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return SamlIdpConfigResponseCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spConfig: (() { final guardedValue = map['spConfig']; if (guardedValue == null) return null; return SamlSpConfigResponseCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
