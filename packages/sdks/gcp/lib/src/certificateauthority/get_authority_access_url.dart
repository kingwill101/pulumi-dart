// ignore_for_file: unused_element, unnecessary_cast


class GetAuthorityAccessUrl {
  /// The URL where this CertificateAuthority's CA certificate is published. This will only be
  /// set for CAs that have been activated.
  final String caCertificateAccessUrl;
  /// The URL where this CertificateAuthority's CRLs are published. This will only be set for
  /// CAs that have been activated.
  final List<String> crlAccessUrls;

  /// Creates a new [GetAuthorityAccessUrl].
  /// [caCertificateAccessUrl] The URL where this CertificateAuthority's CA certificate is published. This will only be
  /// [crlAccessUrls] The URL where this CertificateAuthority's CRLs are published. This will only be set for
  GetAuthorityAccessUrl({
    required this.caCertificateAccessUrl,
    required this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateAccessUrl': caCertificateAccessUrl,
      'crlAccessUrls': crlAccessUrls,
    };
  }

  factory GetAuthorityAccessUrl.fromMap(Map<String, dynamic> map) {
    return GetAuthorityAccessUrl(
      caCertificateAccessUrl: map['caCertificateAccessUrl'] as String,
      crlAccessUrls: (map['crlAccessUrls'] as List).cast<String>(),
    );
  }
}

