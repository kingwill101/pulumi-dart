// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_access_identity_provider_config.dart';
import 'get_zero_trust_access_identity_provider_filter.dart';
import 'get_zero_trust_access_identity_provider_saml_certificate_set.dart';
import 'get_zero_trust_access_identity_provider_scim_config.dart';

/// Result data returned by getZeroTrustAccessIdentityProvider.
class GetZeroTrustAccessIdentityProviderResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  final GetZeroTrustAccessIdentityProviderConfig? config;
  final GetZeroTrustAccessIdentityProviderFilter? filter;
  /// UUID.
  final String? id;
  /// UUID.
  final String? identityProviderId;
  /// The name of the identity provider, shown to users on the login page.
  final String? name;
  /// Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  final bool? readOnly;
  /// The SAML encryption certificate set details, including current and previous certificates.
  /// Only present for SAML identity providers with a certificate set assigned.
  final GetZeroTrustAccessIdentityProviderSamlCertificateSet? samlCertificateSet;
  /// The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// Only present for SAML identity providers with encryption configured.
  /// Create a certificate set via POST to `/identity_providers/{id}/saml_certificate`.
  final String? samlCertificateSetId;
  /// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  final GetZeroTrustAccessIdentityProviderScimConfig? scimConfig;
  /// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// Available values: "onetimepin", "azureAD", "saml", "centrify", "facebook", "github", "google-apps", "google", "linkedin", "oidc", "okta", "onelogin", "pingone", "yandex", "cloudflare".
  final String? type;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessIdentityProviderResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [config] The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [filter] Optional.
  /// [id] UUID.
  /// [identityProviderId] UUID.
  /// [name] The name of the identity provider, shown to users on the login page.
  /// [readOnly] Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  /// [samlCertificateSet] The SAML encryption certificate set details, including current and previous certificates.
  /// [samlCertificateSetId] The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// [scimConfig] The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  /// [type] The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessIdentityProviderResult({
    this.accountId,
    this.config,
    this.filter,
    this.id,
    this.identityProviderId,
    this.name,
    this.readOnly,
    this.samlCertificateSet,
    this.samlCertificateSetId,
    this.scimConfig,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'filter': ?filter?.toMap(),
      'id': ?id,
      'identityProviderId': ?identityProviderId,
      'name': ?name,
      'readOnly': ?readOnly,
      'samlCertificateSet': ?samlCertificateSet?.toMap(),
      'samlCertificateSetId': ?samlCertificateSetId,
      'scimConfig': ?scimConfig?.toMap(),
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessIdentityProviderResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProviderResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetZeroTrustAccessIdentityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessIdentityProviderFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityProviderId: (() { final guardedValue = map['identityProviderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      samlCertificateSet: (() { final guardedValue = map['samlCertificateSet']; if (guardedValue == null) return null; return GetZeroTrustAccessIdentityProviderSamlCertificateSet.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      samlCertificateSetId: (() { final guardedValue = map['samlCertificateSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scimConfig: (() { final guardedValue = map['scimConfig']; if (guardedValue == null) return null; return GetZeroTrustAccessIdentityProviderScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
