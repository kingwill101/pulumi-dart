// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomHttpsConfigurationCustomHttpsConfiguration {
  /// The name of the Key Vault secret representing the full certificate PFX.
  final pulumi.Input<String>? azureKeyVaultCertificateSecretName;
  /// The version of the Key Vault secret representing the full certificate PFX.
  ///
  /// > **Note:** In order to enable the use of your own custom `HTTPS certificate` you must grant `Azure Front Door Service` access to your key vault. For instructions on how to configure your `Key Vault` correctly please refer to the [product documentation](https://docs.microsoft.com/azure/frontdoor/front-door-custom-domain-https#option-2-use-your-own-certificate).
  final pulumi.Input<String>? azureKeyVaultCertificateSecretVersion;
  /// The ID of the Key Vault containing the SSL certificate.
  final pulumi.Input<String>? azureKeyVaultCertificateVaultId;
  /// Certificate source to encrypted `HTTPS` traffic with. Allowed values are `FrontDoor` or `AzureKeyVault`. Defaults to `FrontDoor`.
  ///
  /// The following attributes are only valid if `certificate_source` is set to `AzureKeyVault`:
  final pulumi.Input<String>? certificateSource;
  /// Minimum client TLS version supported.
  final pulumi.Input<String>? minimumTlsVersion;
  final pulumi.Input<String>? provisioningState;
  final pulumi.Input<String>? provisioningSubstate;

  /// Creates a new [CustomHttpsConfigurationCustomHttpsConfiguration].
  /// [azureKeyVaultCertificateSecretName] The name of the Key Vault secret representing the full certificate PFX.
  /// [azureKeyVaultCertificateSecretVersion] The version of the Key Vault secret representing the full certificate PFX.
  /// [azureKeyVaultCertificateVaultId] The ID of the Key Vault containing the SSL certificate.
  /// [certificateSource] Certificate source to encrypted `HTTPS` traffic with. Allowed values are `FrontDoor` or `AzureKeyVault`. Defaults to `FrontDoor`.
  /// [minimumTlsVersion] Minimum client TLS version supported.
  /// [provisioningState] Optional.
  /// [provisioningSubstate] Optional.
  CustomHttpsConfigurationCustomHttpsConfiguration({
    this.azureKeyVaultCertificateSecretName,
    this.azureKeyVaultCertificateSecretVersion,
    this.azureKeyVaultCertificateVaultId,
    this.certificateSource,
    this.minimumTlsVersion,
    this.provisioningState,
    this.provisioningSubstate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultCertificateSecretName': ?azureKeyVaultCertificateSecretName,
      'azureKeyVaultCertificateSecretVersion': ?azureKeyVaultCertificateSecretVersion,
      'azureKeyVaultCertificateVaultId': ?azureKeyVaultCertificateVaultId,
      'certificateSource': ?certificateSource,
      'minimumTlsVersion': ?minimumTlsVersion,
      'provisioningState': ?provisioningState,
      'provisioningSubstate': ?provisioningSubstate,
    };
  }

  factory CustomHttpsConfigurationCustomHttpsConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomHttpsConfigurationCustomHttpsConfiguration(
      azureKeyVaultCertificateSecretName: map['azureKeyVaultCertificateSecretName'] == null ? null : (map['azureKeyVaultCertificateSecretName']! as String).input(),
      azureKeyVaultCertificateSecretVersion: map['azureKeyVaultCertificateSecretVersion'] == null ? null : (map['azureKeyVaultCertificateSecretVersion']! as String).input(),
      azureKeyVaultCertificateVaultId: map['azureKeyVaultCertificateVaultId'] == null ? null : (map['azureKeyVaultCertificateVaultId']! as String).input(),
      certificateSource: map['certificateSource'] == null ? null : (map['certificateSource']! as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      provisioningSubstate: map['provisioningSubstate'] == null ? null : (map['provisioningSubstate']! as String).input(),
    );
  }
}

