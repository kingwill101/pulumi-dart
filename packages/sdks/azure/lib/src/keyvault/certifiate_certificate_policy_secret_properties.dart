// ignore_for_file: unused_element, unnecessary_cast


class CertifiateCertificatePolicySecretProperties {
  /// The Content-Type of the Certificate, such as `application/x-pkcs12` for a PFX or `application/x-pem-file` for a PEM.
  final String contentType;

  /// Creates a new [CertifiateCertificatePolicySecretProperties].
  /// [contentType] The Content-Type of the Certificate, such as `application/x-pkcs12` for a PFX or `application/x-pem-file` for a PEM.
  CertifiateCertificatePolicySecretProperties({
    required this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
    };
  }

  factory CertifiateCertificatePolicySecretProperties.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicySecretProperties(
      contentType: map['contentType'] as String,
    );
  }
}

