// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_ssl_certificate_args_doc}
/// Arguments for getRegionSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_ssl_certificate_args_doc}
class GetRegionSslCertificateArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetRegionSslCertificateArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [sslCertificate] Required.
  GetRegionSslCertificateArgs({
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

  factory GetRegionSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      sslCertificate: pulumi.Input.fromValue(map['sslCertificate'] as String),
    );
  }
}
