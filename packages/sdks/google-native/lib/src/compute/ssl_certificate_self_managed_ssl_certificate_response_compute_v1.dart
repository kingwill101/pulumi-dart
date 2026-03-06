// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration and status of a self-managed SSL certificate.
class SslCertificateSelfManagedSslCertificateResponseComputeV1 {
  /// A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final pulumi.Input<String> certificate;
  /// A write-only private key in PEM format. Only insert requests will include this field.
  final pulumi.Input<String> privateKey;

  /// Creates a new [SslCertificateSelfManagedSslCertificateResponseComputeV1].
  /// [certificate] A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  /// [privateKey] A write-only private key in PEM format. Only insert requests will include this field.
  const SslCertificateSelfManagedSslCertificateResponseComputeV1({
    required this.certificate,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'privateKey': privateKey,
    };
  }

  factory SslCertificateSelfManagedSslCertificateResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SslCertificateSelfManagedSslCertificateResponseComputeV1(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
    );
  }
}

