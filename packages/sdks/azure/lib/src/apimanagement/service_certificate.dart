// ignore_for_file: unused_element, unnecessary_cast


class ServiceCertificate {
  /// The password for the certificate.
  final String? certificatePassword;
  /// The Base64 Encoded PFX or Base64 Encoded X.509 Certificate.
  final String encodedCertificate;
  /// The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`.
  final String? expiry;
  /// The name of the Certificate Store where this certificate should be stored. Possible values are `CertificateAuthority` and `Root`.
  final String storeName;
  /// The subject of the certificate.
  final String? subject;
  /// The thumbprint of the certificate.
  final String? thumbprint;

  /// Creates a new [ServiceCertificate].
  /// [certificatePassword] The password for the certificate.
  /// [encodedCertificate] The Base64 Encoded PFX or Base64 Encoded X.509 Certificate.
  /// [expiry] The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`.
  /// [storeName] The name of the Certificate Store where this certificate should be stored. Possible values are `CertificateAuthority` and `Root`.
  /// [subject] The subject of the certificate.
  /// [thumbprint] The thumbprint of the certificate.
  ServiceCertificate({
    this.certificatePassword,
    required this.encodedCertificate,
    this.expiry,
    required this.storeName,
    this.subject,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePassword': ?certificatePassword,
      'encodedCertificate': encodedCertificate,
      'expiry': ?expiry,
      'storeName': storeName,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
    };
  }

  factory ServiceCertificate.fromMap(Map<String, dynamic> map) {
    return ServiceCertificate(
      certificatePassword: map['certificatePassword'] == null ? null : map['certificatePassword'] as String,
      encodedCertificate: map['encodedCertificate'] as String,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      storeName: map['storeName'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

