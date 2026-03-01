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
    pulumi.Output<String>? content,
    pulumi.Output<String>? fullPath,
    pulumi.Output<String>? issuerCert,
    pulumi.Output<String>? monitoringType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ocsp,
    pulumi.Output<String>? partition,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      issuerCert = pulumi.Input.asOptionalInput<String>(issuerCert),
      monitoringType = pulumi.Input.asOptionalInput<String>(monitoringType),
      name = pulumi.Input.asOptionalInput<String>(name),
      ocsp = pulumi.Input.asOptionalInput<String>(ocsp),
      partition = pulumi.Input.asOptionalInput<String>(partition);

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
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      fullPath: map['fullPath'] == null ? null : pulumi.Output.create<String>(map['fullPath'] as String),
      issuerCert: map['issuerCert'] == null ? null : pulumi.Output.create<String>(map['issuerCert'] as String),
      monitoringType: map['monitoringType'] == null ? null : pulumi.Output.create<String>(map['monitoringType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ocsp: map['ocsp'] == null ? null : pulumi.Output.create<String>(map['ocsp'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
    );
  }
}

