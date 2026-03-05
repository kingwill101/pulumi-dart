// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// URLs where a CertificateAuthority will publish content.
class AccessUrlsResponse {
  /// The URL where this CertificateAuthority's CA certificate is published. This will only be set for CAs that have been activated.
  final pulumi.Input<String> caCertificateAccessUrl;
  /// The URLs where this CertificateAuthority's CRLs are published. This will only be set for CAs that have been activated.
  final pulumi.Input<List<String>> crlAccessUrls;

  /// Creates a new [AccessUrlsResponse].
  /// [caCertificateAccessUrl] The URL where this CertificateAuthority's CA certificate is published. This will only be set for CAs that have been activated.
  /// [crlAccessUrls] The URLs where this CertificateAuthority's CRLs are published. This will only be set for CAs that have been activated.
  AccessUrlsResponse({
    required this.caCertificateAccessUrl,
    required this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateAccessUrl': caCertificateAccessUrl,
      'crlAccessUrls': crlAccessUrls,
    };
  }

  factory AccessUrlsResponse.fromMap(Map<String, dynamic> map) {
    return AccessUrlsResponse(
      caCertificateAccessUrl: pulumi.Input.fromValue(map['caCertificateAccessUrl'] as String),
      crlAccessUrls: pulumi.Input.fromValue((map['crlAccessUrls'] as List).cast<String>()),
    );
  }
}

