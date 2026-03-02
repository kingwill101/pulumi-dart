// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1beta4_ssl_cert_sqladmin_v1beta4_args_doc}
/// The set of arguments for SslCert.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_ssl_cert_sqladmin_v1beta4_args_doc}
class SslCertSqladminV1beta4Args {
  /// User supplied name. Must be a distinct name from the other certificates for this instance.
  final pulumi.Input<String>? commonName;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [SslCertSqladminV1beta4Args].
  /// [commonName] User supplied name. Must be a distinct name from the other certificates for this instance.
  /// [instance] Required.
  /// [project] Optional.
  SslCertSqladminV1beta4Args({
    this.commonName,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'instance': instance,
      'project': ?project,
    };
  }

  factory SslCertSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return SslCertSqladminV1beta4Args(
      commonName: map['commonName'] == null ? null : (map['commonName'] as String).input(),
      instance: (map['instance'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

