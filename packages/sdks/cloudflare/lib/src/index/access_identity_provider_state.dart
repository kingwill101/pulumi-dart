// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_identity_provider_config.dart';
import 'access_identity_provider_saml_certificate_set.dart';
import 'access_identity_provider_scim_config.dart';

/// Input properties used for looking up and filtering AccessIdentityProvider resources.
class AccessIdentityProviderState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  final pulumi.Input<AccessIdentityProviderConfig?>? config;
  /// The name of the identity provider, shown to users on the login page.
  final pulumi.Input<String?>? name;
  /// Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  final pulumi.Input<bool?>? readOnly;
  /// The SAML encryption certificate set details, including current and previous certificates.
  /// Only present for SAML identity providers with a certificate set assigned.
  final pulumi.Input<AccessIdentityProviderSamlCertificateSet?>? samlCertificateSet;
  /// The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// Only present for SAML identity providers with encryption configured.
  /// Create a certificate set via POST to `/identity_providers/{id}/saml_certificate`.
  final pulumi.Input<String?>? samlCertificateSetId;
  /// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  final pulumi.Input<AccessIdentityProviderScimConfig?>? scimConfig;
  /// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// Available values: "onetimepin", "azureAD", "saml", "centrify", "facebook", "github", "google-apps", "google", "linkedin", "oidc", "okta", "onelogin", "pingone", "yandex", "cloudflare".
  final pulumi.Input<String?>? type;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessIdentityProviderState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [config] The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [name] The name of the identity provider, shown to users on the login page.
  /// [readOnly] Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  /// [samlCertificateSet] The SAML encryption certificate set details, including current and previous certificates.
  /// [samlCertificateSetId] The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// [scimConfig] The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  /// [type] The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessIdentityProviderState({
    this.accountId,
    this.config,
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
      'config': ?pulumi.Input.mapOptionalInputValue<AccessIdentityProviderConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'readOnly': ?readOnly,
      'samlCertificateSet': ?pulumi.Input.mapOptionalInputValue<AccessIdentityProviderSamlCertificateSet, Map<String, dynamic>>(samlCertificateSet, (value) => value.toMap()),
      'samlCertificateSetId': ?samlCertificateSetId,
      'scimConfig': ?pulumi.Input.mapOptionalInputValue<AccessIdentityProviderScimConfig, Map<String, dynamic>>(scimConfig, (value) => value.toMap()),
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory AccessIdentityProviderState.fromMap(Map<String, dynamic> map) {
    return AccessIdentityProviderState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessIdentityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      samlCertificateSet: (() { final guardedValue = map['samlCertificateSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessIdentityProviderSamlCertificateSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samlCertificateSetId: (() { final guardedValue = map['samlCertificateSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scimConfig: (() { final guardedValue = map['scimConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessIdentityProviderScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
