// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_ssl_certificate_compute_v1_args_doc}
/// Arguments for getRegionSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_ssl_certificate_compute_v1_args_doc}
class GetRegionSslCertificateComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetRegionSslCertificateComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [sslCertificate] Required.
  const GetRegionSslCertificateComputeV1Args({
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

  factory GetRegionSslCertificateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      sslCertificate: pulumi.Input.fromValue(map['sslCertificate'] as String),
    );
  }
}
