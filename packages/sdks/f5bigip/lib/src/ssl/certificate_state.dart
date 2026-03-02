// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Content of certificate on Disk
  final pulumi.Input<String>? content;
  /// Full Path Name of ssl certificate
  final pulumi.Input<String>? fullPath;
  /// Specifies the issuer certificate.
  final pulumi.Input<String>? issuerCert;
  /// Specifies the type of monitoring used.
  final pulumi.Input<String>? monitoringType;
  /// Name of the SSL Certificate to be Imported on to BIGIP
  final pulumi.Input<String>? name;
  /// Specifies the OCSP responder.
  final pulumi.Input<String>? ocsp;
  /// Partition of ssl certificate
  final pulumi.Input<String>? partition;

  /// Creates a new [CertificateState].
  /// [content] Content of certificate on Disk
  /// [fullPath] Full Path Name of ssl certificate
  /// [issuerCert] Specifies the issuer certificate.
  /// [monitoringType] Specifies the type of monitoring used.
  /// [name] Name of the SSL Certificate to be Imported on to BIGIP
  /// [ocsp] Specifies the OCSP responder.
  /// [partition] Partition of ssl certificate
  CertificateState({
    this.content,
    this.fullPath,
    this.issuerCert,
    this.monitoringType,
    this.name,
    this.ocsp,
    this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'fullPath': ?fullPath,
      'issuerCert': ?issuerCert,
      'monitoringType': ?monitoringType,
      'name': ?name,
      'ocsp': ?ocsp,
      'partition': ?partition,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath']! as String).input(),
      issuerCert: map['issuerCert'] == null ? null : (map['issuerCert']! as String).input(),
      monitoringType: map['monitoringType'] == null ? null : (map['monitoringType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ocsp: map['ocsp'] == null ? null : (map['ocsp']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
    );
  }
}

