// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_ssl_certificate_args_doc}
/// Arguments for getSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_ssl_certificate_args_doc}
class GetSslCertificateArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetSslCertificateArgs].
  /// [project] Optional.
  /// [sslCertificate] Required.
  GetSslCertificateArgs({
    this.project,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificate: pulumi.Input.fromValue(map['sslCertificate'] as String),
    );
  }
}

