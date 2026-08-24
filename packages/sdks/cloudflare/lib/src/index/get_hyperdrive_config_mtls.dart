// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHyperdriveConfigMtls {
  /// Define CA certificate ID obtained after uploading CA cert.
  final pulumi.Input<String> caCertificateId;
  /// Define mTLS certificate ID obtained after uploading client cert.
  final pulumi.Input<String> mtlsCertificateId;
  /// Set SSL mode to 'require', 'verify-ca', or 'verify-full' to verify the CA.
  final pulumi.Input<String> sslmode;

  /// Creates a new [GetHyperdriveConfigMtls].
  /// [caCertificateId] Define CA certificate ID obtained after uploading CA cert.
  /// [mtlsCertificateId] Define mTLS certificate ID obtained after uploading client cert.
  /// [sslmode] Set SSL mode to 'require', 'verify-ca', or 'verify-full' to verify the CA.
  const GetHyperdriveConfigMtls({
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

  factory GetHyperdriveConfigMtls.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigMtls(
      caCertificateId: pulumi.Input.fromValue(map['caCertificateId'] as String),
      mtlsCertificateId: pulumi.Input.fromValue(map['mtlsCertificateId'] as String),
      sslmode: pulumi.Input.fromValue(map['sslmode'] as String),
    );
  }
}
