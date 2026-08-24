// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_identity_providers_result_config.dart';
import 'get_zero_trust_access_identity_providers_result_saml_certificate_set.dart';
import 'get_zero_trust_access_identity_providers_result_scim_config.dart';

class GetZeroTrustAccessIdentityProvidersResult {
  /// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  final pulumi.Input<GetZeroTrustAccessIdentityProvidersResultConfig> config;
  /// UUID.
  final pulumi.Input<String> id;
  /// The name of the identity provider, shown to users on the login page.
  final pulumi.Input<String> name;
  /// Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  final pulumi.Input<bool> readOnly;
  /// The SAML encryption certificate set details, including current and previous certificates.
  /// Only present for SAML identity providers with a certificate set assigned.
  final pulumi.Input<GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet> samlCertificateSet;
  /// The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// Only present for SAML identity providers with encryption configured.
  /// Create a certificate set via POST to `/identity_providers/{id}/saml_certificate`.
  final pulumi.Input<String> samlCertificateSetId;
  /// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  final pulumi.Input<GetZeroTrustAccessIdentityProvidersResultScimConfig> scimConfig;
  /// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// Available values: "onetimepin", "azureAD", "saml", "centrify", "facebook", "github", "google-apps", "google", "linkedin", "oidc", "okta", "onelogin", "pingone", "yandex", "cloudflare".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustAccessIdentityProvidersResult].
  /// [config] The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [id] UUID.
  /// [name] The name of the identity provider, shown to users on the login page.
  /// [readOnly] Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  /// [samlCertificateSet] The SAML encryption certificate set details, including current and previous certificates.
  /// [samlCertificateSetId] The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// [scimConfig] The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  /// [type] The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  const GetZeroTrustAccessIdentityProvidersResult({
    required this.config,
    required this.id,
    required this.name,
    required this.readOnly,
    required this.samlCertificateSet,
    required this.samlCertificateSetId,
    required this.scimConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetZeroTrustAccessIdentityProvidersResultConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'id': id,
      'name': name,
      'readOnly': readOnly,
      'samlCertificateSet': pulumi.Input.mapInputValue<GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet, Map<String, dynamic>>(samlCertificateSet, (value) => value.toMap()),
      'samlCertificateSetId': samlCertificateSetId,
      'scimConfig': pulumi.Input.mapInputValue<GetZeroTrustAccessIdentityProvidersResultScimConfig, Map<String, dynamic>>(scimConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetZeroTrustAccessIdentityProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProvidersResult(
      config: pulumi.Input.fromValue(GetZeroTrustAccessIdentityProvidersResultConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      samlCertificateSet: pulumi.Input.fromValue(GetZeroTrustAccessIdentityProvidersResultSamlCertificateSet.fromMap((map['samlCertificateSet']! as Map).cast<String, dynamic>())),
      samlCertificateSetId: pulumi.Input.fromValue(map['samlCertificateSetId'] as String),
      scimConfig: pulumi.Input.fromValue(GetZeroTrustAccessIdentityProvidersResultScimConfig.fromMap((map['scimConfig']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
