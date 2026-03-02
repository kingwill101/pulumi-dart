// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_get_certificates_get_certificates_args_doc}
/// Arguments for getCertificates.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_get_certificates_get_certificates_args_doc}
class GetCertificatesArgs {
  /// Filter expression to restrict the certificates returned.
  final pulumi.Input<String>? filter;
  /// The region in which the resource belongs. If it is not provided, `GLOBAL` is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCertificatesArgs].
  /// [filter] Filter expression to restrict the certificates returned.
  /// [region] The region in which the resource belongs. If it is not provided, `GLOBAL` is used.
  GetCertificatesArgs({
    this.filter,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'region': ?region,
    };
  }

  factory GetCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatesArgs(
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

