// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CryptoKeyVersionAttestationCertChains {
  /// Cavium certificate chain corresponding to the attestation.
  final pulumi.Input<List<String>>? caviumCerts;
  /// Google card certificate chain corresponding to the attestation.
  final pulumi.Input<List<String>>? googleCardCerts;
  /// Google partition certificate chain corresponding to the attestation.
  final pulumi.Input<List<String>>? googlePartitionCerts;

  /// Creates a new [CryptoKeyVersionAttestationCertChains].
  /// [caviumCerts] Cavium certificate chain corresponding to the attestation.
  /// [googleCardCerts] Google card certificate chain corresponding to the attestation.
  /// [googlePartitionCerts] Google partition certificate chain corresponding to the attestation.
  CryptoKeyVersionAttestationCertChains({
    this.caviumCerts,
    this.googleCardCerts,
    this.googlePartitionCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caviumCerts': ?caviumCerts,
      'googleCardCerts': ?googleCardCerts,
      'googlePartitionCerts': ?googlePartitionCerts,
    };
  }

  factory CryptoKeyVersionAttestationCertChains.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionAttestationCertChains(
      caviumCerts: (() { final guardedValue = map['caviumCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      googleCardCerts: (() { final guardedValue = map['googleCardCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      googlePartitionCerts: (() { final guardedValue = map['googlePartitionCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

