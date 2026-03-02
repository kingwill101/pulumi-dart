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
      caviumCerts: map['caviumCerts'] == null ? null : ((map['caviumCerts'] as List).cast<String>()).input(),
      googleCardCerts: map['googleCardCerts'] == null ? null : ((map['googleCardCerts'] as List).cast<String>()).input(),
      googlePartitionCerts: map['googlePartitionCerts'] == null ? null : ((map['googlePartitionCerts'] as List).cast<String>()).input(),
    );
  }
}

