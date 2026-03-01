// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificateDescriptionCertFingerprint {
  /// (Output)
  /// The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
  final String? sha256Hash;

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
      sha256Hash: map['sha256Hash'] == null ? null : map['sha256Hash'] as String,
    );
  }
}

