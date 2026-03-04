// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration and status of a self-managed SSL certificate.
class SslCertificateSelfManagedSslCertificateComputeV1 {
  /// A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final pulumi.Input<String>? certificate;

  /// A write-only private key in PEM format. Only insert requests will include this field.
  final pulumi.Input<String>? privateKey;

  /// Creates a new [SslCertificateSelfManagedSslCertificateComputeV1].
  /// [certificate] A local certificate file. The certificate must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  /// [privateKey] A write-only private key in PEM format. Only insert requests will include this field.
  SslCertificateSelfManagedSslCertificateComputeV1({
    this.certificate,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'privateKey': ?privateKey,
    };
  }

  factory SslCertificateSelfManagedSslCertificateComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SslCertificateSelfManagedSslCertificateComputeV1(
      certificate: (() {
        final guardedValue = map['certificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
