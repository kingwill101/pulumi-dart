// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_ssl_certificate_certificate_args_doc}
class CertificateArgs {
  /// Content of certificate on Disk
  final pulumi.Input<String> content;
  /// Full Path Name of ssl certificate
  final pulumi.Input<String>? fullPath;
  /// Specifies the issuer certificate.
  final pulumi.Input<String>? issuerCert;
  /// Specifies the type of monitoring used.
  final pulumi.Input<String>? monitoringType;
  /// Name of the SSL Certificate to be Imported on to BIGIP
  final pulumi.Input<String> name;
  /// Specifies the OCSP responder.
  final pulumi.Input<String>? ocsp;
  /// Partition of ssl certificate
  final pulumi.Input<String>? partition;

  /// Creates a new [CertificateArgs].
  /// [content] Content of certificate on Disk
  /// [fullPath] Full Path Name of ssl certificate
  /// [issuerCert] Specifies the issuer certificate.
  /// [monitoringType] Specifies the type of monitoring used.
  /// [name] Name of the SSL Certificate to be Imported on to BIGIP
  /// [ocsp] Specifies the OCSP responder.
  /// [partition] Partition of ssl certificate
  CertificateArgs({
    required this.content,
    this.fullPath,
    this.issuerCert,
    this.monitoringType,
    required this.name,
    this.ocsp,
    this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fullPath': ?fullPath,
      'issuerCert': ?issuerCert,
      'monitoringType': ?monitoringType,
      'name': name,
      'ocsp': ?ocsp,
      'partition': ?partition,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      content: (map['content'] as String).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath']! as String).input(),
      issuerCert: map['issuerCert'] == null ? null : (map['issuerCert']! as String).input(),
      monitoringType: map['monitoringType'] == null ? null : (map['monitoringType']! as String).input(),
      name: (map['name'] as String).input(),
      ocsp: map['ocsp'] == null ? null : (map['ocsp']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
    );
  }
}

