// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ssl_key_cert_ssl_key_cert_args_doc}
/// The set of arguments for SslKeyCert.
/// {@endtemplate}
/// {@macro pulumi_index_ssl_key_cert_ssl_key_cert_args_doc}
class SslKeyCertArgs {
  /// The content of the cert.
  final pulumi.Input<String> certContent;

  /// full path of the SSL certificate on the BIGIP.
  final pulumi.Input<String>? certFullPath;

  /// Specifies the type of monitoring used.
  final pulumi.Input<String>? certMonitoringType;

  /// Name of the SSL certificate to be Imported on to BIGIP.
  final pulumi.Input<String> certName;

  /// Specifies the OCSP responder.
  final pulumi.Input<String>? certOcsp;

  /// Specifies the issuer certificate.
  final pulumi.Input<String>? issuerCert;

  /// The content of the key.
  final pulumi.Input<String> keyContent;

  /// full path of the SSL key on the BIGIP.
  final pulumi.Input<String>? keyFullPath;

  /// Name of the SSL key to be Imported on to BIGIP.
  final pulumi.Input<String> keyName;

  /// Partition on to SSL certificate and key to be imported.
  final pulumi.Input<String>? partition;

  /// Passphrase on the SSL key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [SslKeyCertArgs].
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
  SslKeyCertArgs({
    required this.certContent,
    this.certFullPath,
    this.certMonitoringType,
    required this.certName,
    this.certOcsp,
    this.issuerCert,
    required this.keyContent,
    this.keyFullPath,
    required this.keyName,
    this.partition,
    this.passphrase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certContent': certContent,
      'certFullPath': ?certFullPath,
      'certMonitoringType': ?certMonitoringType,
      'certName': certName,
      'certOcsp': ?certOcsp,
      'issuerCert': ?issuerCert,
      'keyContent': keyContent,
      'keyFullPath': ?keyFullPath,
      'keyName': keyName,
      'partition': ?partition,
      'passphrase': ?passphrase,
    };
  }

  factory SslKeyCertArgs.fromMap(Map<String, dynamic> map) {
    return SslKeyCertArgs(
      certContent: pulumi.Input.fromValue(map['certContent'] as String),
      certFullPath: (() {
        final guardedValue = map['certFullPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certMonitoringType: (() {
        final guardedValue = map['certMonitoringType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certName: pulumi.Input.fromValue(map['certName'] as String),
      certOcsp: (() {
        final guardedValue = map['certOcsp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issuerCert: (() {
        final guardedValue = map['issuerCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyContent: pulumi.Input.fromValue(map['keyContent'] as String),
      keyFullPath: (() {
        final guardedValue = map['keyFullPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      partition: (() {
        final guardedValue = map['partition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passphrase: (() {
        final guardedValue = map['passphrase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
