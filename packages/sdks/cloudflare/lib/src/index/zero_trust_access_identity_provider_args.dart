// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_identity_provider_config.dart';
import 'zero_trust_access_identity_provider_scim_config.dart';

/// {@template pulumi_index_zero_trust_access_identity_provider_zero_trust_access_identity_provider_args_doc}
/// The set of arguments for ZeroTrustAccessIdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_identity_provider_zero_trust_access_identity_provider_args_doc}
class ZeroTrustAccessIdentityProviderArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  final pulumi.Input<ZeroTrustAccessIdentityProviderConfig> config;
  /// The name of the identity provider, shown to users on the login page.
  final pulumi.Input<String> name;
  /// Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  final pulumi.Input<bool?>? readOnly;
  /// The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// Only present for SAML identity providers with encryption configured.
  /// Create a certificate set via POST to `/identity_providers/{id}/saml_certificate`.
  final pulumi.Input<String?>? samlCertificateSetId;
  /// The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  final pulumi.Input<ZeroTrustAccessIdentityProviderScimConfig?>? scimConfig;
  /// The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// Available values: "onetimepin", "azureAD", "saml", "centrify", "facebook", "github", "google-apps", "google", "linkedin", "oidc", "okta", "onelogin", "pingone", "yandex", "cloudflare".
  final pulumi.Input<String> type;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustAccessIdentityProviderArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [config] The configuration parameters for the identity provider. To view the required parameters for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [name] The name of the identity provider, shown to users on the login page.
  /// [readOnly] Indicates that the identity provider is immutable and cannot be updated or deleted via the API.
  /// [samlCertificateSetId] The UID of the SAML encryption certificate set assigned to this Identity Provider.
  /// [scimConfig] The configuration settings for enabling a System for Cross-Domain Identity Management (SCIM) with the identity provider.
  /// [type] The type of identity provider. To determine the value for a specific provider, refer to our [developer documentation](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration/).
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustAccessIdentityProviderArgs({
    this.accountId,
    required this.config,
    required this.name,
    this.readOnly,
    this.samlCertificateSetId,
    this.scimConfig,
    required this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': pulumi.Input.mapInputValue<ZeroTrustAccessIdentityProviderConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': name,
      'readOnly': ?readOnly,
      'samlCertificateSetId': ?samlCertificateSetId,
      'scimConfig': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessIdentityProviderScimConfig, Map<String, dynamic>>(scimConfig, (value) => value.toMap()),
      'type': type,
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustAccessIdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessIdentityProviderArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: pulumi.Input.fromValue(ZeroTrustAccessIdentityProviderConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      samlCertificateSetId: (() { final guardedValue = map['samlCertificateSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scimConfig: (() { final guardedValue = map['scimConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessIdentityProviderScimConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
