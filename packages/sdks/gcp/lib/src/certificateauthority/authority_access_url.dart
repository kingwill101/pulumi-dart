// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorityAccessUrl {
  /// (Output)
  /// The URL where this CertificateAuthority's CA certificate is published. This will only be
  /// set for CAs that have been activated.
  final pulumi.Input<String>? caCertificateAccessUrl;
  /// (Output)
  /// The URL where this CertificateAuthority's CRLs are published. This will only be set for
  /// CAs that have been activated.
  final pulumi.Input<List<String>>? crlAccessUrls;

  /// Creates a new [AuthorityAccessUrl].
  /// [caCertificateAccessUrl] (Output)
  /// [crlAccessUrls] (Output)
  AuthorityAccessUrl({
    this.caCertificateAccessUrl,
    this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateAccessUrl': ?caCertificateAccessUrl,
      'crlAccessUrls': ?crlAccessUrls,
    };
  }

  factory AuthorityAccessUrl.fromMap(Map<String, dynamic> map) {
    return AuthorityAccessUrl(
      caCertificateAccessUrl: map['caCertificateAccessUrl'] == null ? null : (map['caCertificateAccessUrl'] as String).input(),
      crlAccessUrls: map['crlAccessUrls'] == null ? null : ((map['crlAccessUrls'] as List).cast<String>()).input(),
    );
  }
}

