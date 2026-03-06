// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_attestation_cert_chains.dart';
import 'crypto_key_version_attestation_external_protection_level_options.dart';

class CryptoKeyVersionAttestation {
  /// The certificate chains needed to validate the attestation
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionAttestationCertChains>? certChains;
  /// (Output)
  /// The attestation data provided by the HSM when the key operation was performed.
  final pulumi.Input<String>? content;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionAttestationExternalProtectionLevelOptions>? externalProtectionLevelOptions;
  /// (Output)
  /// The format of the attestation data.
  final pulumi.Input<String>? format;

  /// Creates a new [CryptoKeyVersionAttestation].
  /// [certChains] The certificate chains needed to validate the attestation
  /// [content] (Output)
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [format] (Output)
  const CryptoKeyVersionAttestation({
    this.certChains,
    this.content,
    this.externalProtectionLevelOptions,
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certChains': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionAttestationCertChains, Map<String, dynamic>>(certChains, (value) => value.toMap()),
      'content': ?content,
      'externalProtectionLevelOptions': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionAttestationExternalProtectionLevelOptions, Map<String, dynamic>>(externalProtectionLevelOptions, (value) => value.toMap()),
      'format': ?format,
    };
  }

  factory CryptoKeyVersionAttestation.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionAttestation(
      certChains: (() { final guardedValue = map['certChains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoKeyVersionAttestationCertChains.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalProtectionLevelOptions: (() { final guardedValue = map['externalProtectionLevelOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoKeyVersionAttestationExternalProtectionLevelOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

