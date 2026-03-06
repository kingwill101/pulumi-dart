// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#section-7.4.2.
class CertificateChainsResponse {
  /// Cavium certificate chain corresponding to the attestation.
  final pulumi.Input<List<String>> caviumCerts;
  /// Google card certificate chain corresponding to the attestation.
  final pulumi.Input<List<String>> googleCardCerts;
  /// Google partition certificate chain corresponding to the attestation.
  final pulumi.Input<List<String>> googlePartitionCerts;

  /// Creates a new [CertificateChainsResponse].
  /// [caviumCerts] Cavium certificate chain corresponding to the attestation.
  /// [googleCardCerts] Google card certificate chain corresponding to the attestation.
  /// [googlePartitionCerts] Google partition certificate chain corresponding to the attestation.
  const CertificateChainsResponse({
    required this.caviumCerts,
    required this.googleCardCerts,
    required this.googlePartitionCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caviumCerts': caviumCerts,
      'googleCardCerts': googleCardCerts,
      'googlePartitionCerts': googlePartitionCerts,
    };
  }

  factory CertificateChainsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateChainsResponse(
      caviumCerts: pulumi.Input.fromValue((map['caviumCerts'] as List).cast<String>()),
      googleCardCerts: pulumi.Input.fromValue((map['googleCardCerts'] as List).cast<String>()),
      googlePartitionCerts: pulumi.Input.fromValue((map['googlePartitionCerts'] as List).cast<String>()),
    );
  }
}

