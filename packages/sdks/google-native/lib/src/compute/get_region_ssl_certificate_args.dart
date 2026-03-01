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
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> sslCertificate,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      sslCertificate = pulumi.Input.asInput<String>(sslCertificate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetRegionSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      sslCertificate: pulumi.Output.create<String>(map['sslCertificate'] as String),
    );
  }
}

