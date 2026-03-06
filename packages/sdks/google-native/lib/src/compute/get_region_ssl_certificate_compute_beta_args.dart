// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_ssl_certificate_compute_beta_args_doc}
/// Arguments for getRegionSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_ssl_certificate_compute_beta_args_doc}
class GetRegionSslCertificateComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetRegionSslCertificateComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [sslCertificate] Required.
  const GetRegionSslCertificateComputeBetaArgs({
    this.project,
    required this.region,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetRegionSslCertificateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      sslCertificate: pulumi.Input.fromValue(map['sslCertificate'] as String),
    );
  }
}

