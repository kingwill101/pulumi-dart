// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthorityUserDefinedAccessUrl {
  /// A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  final pulumi.Input<List<String>> aiaIssuingCertificateUrls;
  /// A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  final pulumi.Input<List<String>> crlAccessUrls;

  /// Creates a new [GetAuthorityUserDefinedAccessUrl].
  /// [aiaIssuingCertificateUrls] A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  /// [crlAccessUrls] A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  const GetAuthorityUserDefinedAccessUrl({
    required this.aiaIssuingCertificateUrls,
    required this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiaIssuingCertificateUrls': aiaIssuingCertificateUrls,
      'crlAccessUrls': crlAccessUrls,
    };
  }

  factory GetAuthorityUserDefinedAccessUrl.fromMap(Map<String, dynamic> map) {
    return GetAuthorityUserDefinedAccessUrl(
      aiaIssuingCertificateUrls: pulumi.Input.fromValue((map['aiaIssuingCertificateUrls'] as List).cast<String>()),
      crlAccessUrls: pulumi.Input.fromValue((map['crlAccessUrls'] as List).cast<String>()),
    );
  }
}
