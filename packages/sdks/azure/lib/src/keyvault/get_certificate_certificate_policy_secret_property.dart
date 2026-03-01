// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificatePolicySecretProperty {
  /// The Content-Type of the Certificate, for example `application/x-pkcs12` for a PFX or `application/x-pem-file` for a PEM.
  final String contentType;

  /// Creates a new [GetCertificateCertificatePolicySecretProperty].
  /// [contentType] The Content-Type of the Certificate, for example `application/x-pkcs12` for a PFX or `application/x-pem-file` for a PEM.
  GetCertificateCertificatePolicySecretProperty({
    required this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
    };
  }

  factory GetCertificateCertificatePolicySecretProperty.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicySecretProperty(
      contentType: map['contentType'] as String,
    );
  }
}

