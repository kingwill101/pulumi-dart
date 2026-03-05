// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_ssl_certificate_compute_beta_args_doc}
/// Arguments for getSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_ssl_certificate_compute_beta_args_doc}
class GetSslCertificateComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetSslCertificateComputeBetaArgs].
  /// [project] Optional.
  /// [sslCertificate] Required.
  GetSslCertificateComputeBetaArgs({
    this.project,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetSslCertificateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificate: pulumi.Input.fromValue(map['sslCertificate'] as String),
    );
  }
}

