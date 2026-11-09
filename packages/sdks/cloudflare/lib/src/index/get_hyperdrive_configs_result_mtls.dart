// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHyperdriveConfigsResultMtls {
  /// Define CA certificate ID obtained after uploading CA cert.
  final pulumi.Input<String> caCertificateId;
  /// Define mTLS certificate ID obtained after uploading client cert.
  final pulumi.Input<String> mtlsCertificateId;
  /// PostgreSQL accepts `require`, `verify-ca`, and `verify-full`. MySQL accepts `REQUIRED`, `VERIFY_CA`, and `VERIFY_IDENTITY`. The verify modes require a CA certificate; the require modes cannot be used with a CA certificate.
  final pulumi.Input<String> sslmode;

  /// Creates a new [GetHyperdriveConfigsResultMtls].
  /// [caCertificateId] Define CA certificate ID obtained after uploading CA cert.
  /// [mtlsCertificateId] Define mTLS certificate ID obtained after uploading client cert.
  /// [sslmode] PostgreSQL accepts `require`, `verify-ca`, and `verify-full`. MySQL accepts `REQUIRED`, `VERIFY_CA`, and `VERIFY_IDENTITY`. The verify modes require a CA certificate; the require modes cannot be used with a CA certificate.
  const GetHyperdriveConfigsResultMtls({
    required this.caCertificateId,
    required this.mtlsCertificateId,
    required this.sslmode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateId': caCertificateId,
      'mtlsCertificateId': mtlsCertificateId,
      'sslmode': sslmode,
    };
  }

  factory GetHyperdriveConfigsResultMtls.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigsResultMtls(
      caCertificateId: pulumi.Input.fromValue(map['caCertificateId'] as String),
      mtlsCertificateId: pulumi.Input.fromValue(map['mtlsCertificateId'] as String),
      sslmode: pulumi.Input.fromValue(map['sslmode'] as String),
    );
  }
}
