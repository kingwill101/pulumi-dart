// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperdriveConfigMtls {
  /// Define CA certificate ID obtained after uploading CA cert.
  final pulumi.Input<String?>? caCertificateId;
  /// Define mTLS certificate ID obtained after uploading client cert.
  final pulumi.Input<String?>? mtlsCertificateId;
  /// Set SSL mode to 'require', 'verify-ca', or 'verify-full' to verify the CA.
  final pulumi.Input<String?>? sslmode;

  /// Creates a new [HyperdriveConfigMtls].
  /// [caCertificateId] Define CA certificate ID obtained after uploading CA cert.
  /// [mtlsCertificateId] Define mTLS certificate ID obtained after uploading client cert.
  /// [sslmode] Set SSL mode to 'require', 'verify-ca', or 'verify-full' to verify the CA.
  const HyperdriveConfigMtls({
    this.caCertificateId,
    this.mtlsCertificateId,
    this.sslmode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateId': ?caCertificateId,
      'mtlsCertificateId': ?mtlsCertificateId,
      'sslmode': ?sslmode,
    };
  }

  factory HyperdriveConfigMtls.fromMap(Map<String, dynamic> map) {
    return HyperdriveConfigMtls(
      caCertificateId: (() { final guardedValue = map['caCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslmode: (() { final guardedValue = map['sslmode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
