// ignore_for_file: unused_element, unnecessary_cast

import 'publishing_options_encoding_format.dart';

/// Options relating to the publication of each CertificateAuthority's CA certificate and CRLs and their inclusion as extensions in issued Certificates. The options set here apply to certificates issued by any CertificateAuthority in the CaPool.
class PublishingOptions {
  /// Optional. Specifies the encoding format of each CertificateAuthority's CA certificate and CRLs. If this is omitted, CA certificates and CRLs will be published in PEM.
  final PublishingOptionsEncodingFormat? encodingFormat;
  /// Optional. When true, publishes each CertificateAuthority's CA certificate and includes its URL in the "Authority Information Access" X.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding X.509 extension will not be written in issued certificates.
  final bool? publishCaCert;
  /// Optional. When true, publishes each CertificateAuthority's CRL and includes its URL in the "CRL Distribution Points" X.509 extension in all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not be written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are also rebuilt shortly after a certificate is revoked.
  final bool? publishCrl;

  /// Creates a new [PublishingOptions].
  /// [encodingFormat] Optional. Specifies the encoding format of each CertificateAuthority's CA certificate and CRLs. If this is omitted, CA certificates and CRLs will be published in PEM.
  /// [publishCaCert] Optional. When true, publishes each CertificateAuthority's CA certificate and includes its URL in the "Authority Information Access" X.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding X.509 extension will not be written in issued certificates.
  /// [publishCrl] Optional. When true, publishes each CertificateAuthority's CRL and includes its URL in the "CRL Distribution Points" X.509 extension in all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not be written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are also rebuilt shortly after a certificate is revoked.
  PublishingOptions({
    this.encodingFormat,
    this.publishCaCert,
    this.publishCrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encodingFormat': ?encodingFormat == null ? null : encodingFormat!.value,
      'publishCaCert': ?publishCaCert,
      'publishCrl': ?publishCrl,
    };
  }

  factory PublishingOptions.fromMap(Map<String, dynamic> map) {
    return PublishingOptions(
      encodingFormat: map['encodingFormat'] == null ? null : PublishingOptionsEncodingFormat.fromValue(map['encodingFormat'] as String),
      publishCaCert: map['publishCaCert'] == null ? null : map['publishCaCert'] as bool,
      publishCrl: map['publishCrl'] == null ? null : map['publishCrl'] as bool,
    );
  }
}

