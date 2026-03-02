// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionCertFingerprint {
  /// (Output)
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  final pulumi.Input<String>? sha256Hash;

  /// Creates a new [CertificateCertificateDescriptionCertFingerprint].
  /// [sha256Hash] (Output)
  CertificateCertificateDescriptionCertFingerprint({
    this.sha256Hash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sha256Hash': ?sha256Hash,
    };
  }

  factory CertificateCertificateDescriptionCertFingerprint.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionCertFingerprint(
      sha256Hash: map['sha256Hash'] == null ? null : (map['sha256Hash']! as String).input(),
    );
  }
}

