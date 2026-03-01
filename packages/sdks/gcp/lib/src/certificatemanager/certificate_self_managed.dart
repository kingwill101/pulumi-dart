// ignore_for_file: unused_element, unnecessary_cast


class CertificateSelfManaged {
  /// (Optional, Deprecated)
  /// The certificate chain in PEM-encoded form.
  /// Leaf certificate comes first, followed by intermediate ones if any.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// > **Warning:** `certificate_pem` is deprecated and will be removed in a future major release. Use `pem_certificate` instead.
  final String? certificatePem;
  /// The certificate chain in PEM-encoded form.
  /// Leaf certificate comes first, followed by intermediate ones if any.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? pemCertificate;
  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? pemPrivateKey;
  /// (Optional, Deprecated)
  /// The private key of the leaf certificate in PEM-encoded form.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// > **Warning:** `private_key_pem` is deprecated and will be removed in a future major release. Use `pem_private_key` instead.
  final String? privateKeyPem;

  /// Creates a new [CertificateSelfManaged].
  /// [certificatePem] (Optional, Deprecated)
  /// [pemCertificate] The certificate chain in PEM-encoded form.
  /// [pemPrivateKey] The private key of the leaf certificate in PEM-encoded form.
  /// [privateKeyPem] (Optional, Deprecated)
  CertificateSelfManaged({
    this.certificatePem,
    this.pemCertificate,
    this.pemPrivateKey,
    this.privateKeyPem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePem': ?certificatePem,
      'pemCertificate': ?pemCertificate,
      'pemPrivateKey': ?pemPrivateKey,
      'privateKeyPem': ?privateKeyPem,
    };
  }

  factory CertificateSelfManaged.fromMap(Map<String, dynamic> map) {
    return CertificateSelfManaged(
      certificatePem: map['certificatePem'] == null ? null : map['certificatePem'] as String,
      pemCertificate: map['pemCertificate'] == null ? null : map['pemCertificate'] as String,
      pemPrivateKey: map['pemPrivateKey'] == null ? null : map['pemPrivateKey'] as String,
      privateKeyPem: map['privateKeyPem'] == null ? null : map['privateKeyPem'] as String,
    );
  }
}

