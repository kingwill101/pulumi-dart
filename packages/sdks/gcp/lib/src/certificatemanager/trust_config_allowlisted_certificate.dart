// ignore_for_file: unused_element, unnecessary_cast


class TrustConfigAllowlistedCertificate {
  /// PEM certificate that is allowlisted. The certificate can be up to 5k bytes, and must be a parseable X.509 certificate.
  final String pemCertificate;

  /// Creates a new [TrustConfigAllowlistedCertificate].
  /// [pemCertificate] PEM certificate that is allowlisted. The certificate can be up to 5k bytes, and must be a parseable X.509 certificate.
  TrustConfigAllowlistedCertificate({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
    };
  }

  factory TrustConfigAllowlistedCertificate.fromMap(Map<String, dynamic> map) {
    return TrustConfigAllowlistedCertificate(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}

