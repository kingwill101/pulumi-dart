// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorityUserDefinedAccessUrls {
  /// A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  final pulumi.Input<List<String>>? aiaIssuingCertificateUrls;
  /// A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  final pulumi.Input<List<String>>? crlAccessUrls;

  /// Creates a new [AuthorityUserDefinedAccessUrls].
  /// [aiaIssuingCertificateUrls] A list of URLs where this CertificateAuthority's CA certificate is published that is specified by users.
  /// [crlAccessUrls] A list of URLs where this CertificateAuthority's CRLs are published that is specified by users.
  AuthorityUserDefinedAccessUrls({
    this.aiaIssuingCertificateUrls,
    this.crlAccessUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiaIssuingCertificateUrls': ?aiaIssuingCertificateUrls,
      'crlAccessUrls': ?crlAccessUrls,
    };
  }

  factory AuthorityUserDefinedAccessUrls.fromMap(Map<String, dynamic> map) {
    return AuthorityUserDefinedAccessUrls(
      aiaIssuingCertificateUrls: (() { final guardedValue = map['aiaIssuingCertificateUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      crlAccessUrls: (() { final guardedValue = map['crlAccessUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

