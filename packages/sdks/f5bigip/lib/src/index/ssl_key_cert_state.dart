// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SslKeyCert resources.
class SslKeyCertState {
  /// The content of the cert.
  final pulumi.Input<String>? certContent;
  /// full path of the SSL certificate on the BIGIP.
  final pulumi.Input<String>? certFullPath;
  /// Specifies the type of monitoring used.
  final pulumi.Input<String>? certMonitoringType;
  /// Name of the SSL certificate to be Imported on to BIGIP.
  final pulumi.Input<String>? certName;
  /// Specifies the OCSP responder.
  final pulumi.Input<String>? certOcsp;
  /// Specifies the issuer certificate.
  final pulumi.Input<String>? issuerCert;
  /// The content of the key.
  final pulumi.Input<String>? keyContent;
  /// full path of the SSL key on the BIGIP.
  final pulumi.Input<String>? keyFullPath;
  /// Name of the SSL key to be Imported on to BIGIP.
  final pulumi.Input<String>? keyName;
  /// Partition on to SSL certificate and key to be imported.
  final pulumi.Input<String>? partition;
  /// Passphrase on the SSL key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [SslKeyCertState].
  /// [certContent] The content of the cert.
  /// [certFullPath] full path of the SSL certificate on the BIGIP.
  /// [certMonitoringType] Specifies the type of monitoring used.
  /// [certName] Name of the SSL certificate to be Imported on to BIGIP.
  /// [certOcsp] Specifies the OCSP responder.
  /// [issuerCert] Specifies the issuer certificate.
  /// [keyContent] The content of the key.
  /// [keyFullPath] full path of the SSL key on the BIGIP.
  /// [keyName] Name of the SSL key to be Imported on to BIGIP.
  /// [partition] Partition on to SSL certificate and key to be imported.
  /// [passphrase] Passphrase on the SSL key.
  SslKeyCertState({
    pulumi.Output<String>? certContent,
    pulumi.Output<String>? certFullPath,
    pulumi.Output<String>? certMonitoringType,
    pulumi.Output<String>? certName,
    pulumi.Output<String>? certOcsp,
    pulumi.Output<String>? issuerCert,
    pulumi.Output<String>? keyContent,
    pulumi.Output<String>? keyFullPath,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? passphrase,
  }) :
      certContent = pulumi.Input.asOptionalInput<String>(certContent),
      certFullPath = pulumi.Input.asOptionalInput<String>(certFullPath),
      certMonitoringType = pulumi.Input.asOptionalInput<String>(certMonitoringType),
      certName = pulumi.Input.asOptionalInput<String>(certName),
      certOcsp = pulumi.Input.asOptionalInput<String>(certOcsp),
      issuerCert = pulumi.Input.asOptionalInput<String>(issuerCert),
      keyContent = pulumi.Input.asOptionalInput<String>(keyContent),
      keyFullPath = pulumi.Input.asOptionalInput<String>(keyFullPath),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      passphrase = pulumi.Input.asOptionalInput<String>(passphrase);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certContent': ?certContent,
      'certFullPath': ?certFullPath,
      'certMonitoringType': ?certMonitoringType,
      'certName': ?certName,
      'certOcsp': ?certOcsp,
      'issuerCert': ?issuerCert,
      'keyContent': ?keyContent,
      'keyFullPath': ?keyFullPath,
      'keyName': ?keyName,
      'partition': ?partition,
      'passphrase': ?passphrase,
    };
  }

  factory SslKeyCertState.fromMap(Map<String, dynamic> map) {
    return SslKeyCertState(
      certContent: map['certContent'] == null ? null : pulumi.Output.create<String>(map['certContent'] as String),
      certFullPath: map['certFullPath'] == null ? null : pulumi.Output.create<String>(map['certFullPath'] as String),
      certMonitoringType: map['certMonitoringType'] == null ? null : pulumi.Output.create<String>(map['certMonitoringType'] as String),
      certName: map['certName'] == null ? null : pulumi.Output.create<String>(map['certName'] as String),
      certOcsp: map['certOcsp'] == null ? null : pulumi.Output.create<String>(map['certOcsp'] as String),
      issuerCert: map['issuerCert'] == null ? null : pulumi.Output.create<String>(map['issuerCert'] as String),
      keyContent: map['keyContent'] == null ? null : pulumi.Output.create<String>(map['keyContent'] as String),
      keyFullPath: map['keyFullPath'] == null ? null : pulumi.Output.create<String>(map['keyFullPath'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      passphrase: map['passphrase'] == null ? null : pulumi.Output.create<String>(map['passphrase'] as String),
    );
  }
}

