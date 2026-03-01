// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_ssl_certificate_get_region_ssl_certificate_args_doc}
/// Arguments for getRegionSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_ssl_certificate_get_region_ssl_certificate_args_doc}
class GetRegionSslCertificateArgs {
  /// The name of the certificate.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the resource belongs. If it
  /// is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegionSslCertificateArgs].
  /// [name] The name of the certificate.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetRegionSslCertificateArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetRegionSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

