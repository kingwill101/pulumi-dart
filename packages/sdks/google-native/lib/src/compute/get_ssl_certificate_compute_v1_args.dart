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
    pulumi.Output<String>? project,
    required pulumi.Output<String> sslCertificate,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      sslCertificate = pulumi.Input.asInput<String>(sslCertificate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetSslCertificateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sslCertificate: pulumi.Output.create<String>(map['sslCertificate'] as String),
    );
  }
}

