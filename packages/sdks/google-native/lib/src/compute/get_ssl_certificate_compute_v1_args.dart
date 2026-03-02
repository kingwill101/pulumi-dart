// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_ssl_certificate_compute_v1_args_doc}
/// Arguments for getSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_ssl_certificate_compute_v1_args_doc}
class GetSslCertificateComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetSslCertificateComputeV1Args].
  /// [project] Optional.
  /// [sslCertificate] Required.
  GetSslCertificateComputeV1Args({
    this.project,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetSslCertificateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateComputeV1Args(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sslCertificate: (map['sslCertificate'] as String).input(),
    );
  }
}

