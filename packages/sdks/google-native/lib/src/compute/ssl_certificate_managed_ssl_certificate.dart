// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration and status of a managed SSL certificate.
class SslCertificateManagedSslCertificate {
  /// The domains for which a managed SSL certificate will be generated. Each Google-managed SSL certificate supports up to the [maximum number of domains per Google-managed SSL certificate](/load-balancing/docs/quotas#ssl_certificates).
  final pulumi.Input<List<String>>? domains;

  /// Creates a new [SslCertificateManagedSslCertificate].
  /// [domains] The domains for which a managed SSL certificate will be generated. Each Google-managed SSL certificate supports up to the [maximum number of domains per Google-managed SSL certificate](/load-balancing/docs/quotas#ssl_certificates).
  SslCertificateManagedSslCertificate({this.domains});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domains': ?domains};
  }

  factory SslCertificateManagedSslCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return SslCertificateManagedSslCertificate(
      domains: (() {
        final guardedValue = map['domains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
