// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_request_subject.dart';

/// {@template pulumi_index_cert_request_cert_request_args_doc}
/// The set of arguments for CertRequest.
/// {@endtemplate}
/// {@macro pulumi_index_cert_request_cert_request_args_doc}
class CertRequestArgs {
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>?>? dnsNames;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>?>? ipAddresses;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the [`file`](https://www.terraform.io/language/functions/file) interpolation function. Exactly one of `privateKeyPem` or `privateKeyPemWo` must be set.
  final pulumi.Input<String?>? privateKeyPem;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. Unlike `privateKeyPem`, the value provided here is never persisted to Terraform state. Requires `privateKeyPemWoVersion` to be set, and exactly one of `privateKeyPem` or `privateKeyPemWo` must be set.
  final pulumi.Input<String?>? privateKeyPemWo;
  /// The version of the `privateKeyPemWo` write-only private key. Because the write-only key is not stored in state, this version is the only signal the provider has that the key changed: increment it to force the certificate request to be re-issued when rotating the key.
  final pulumi.Input<int?>? privateKeyPemWoVersion;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  final pulumi.Input<CertRequestSubject?>? subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>?>? uris;

  /// Creates a new [CertRequestArgs].
  /// [dnsNames] List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  /// [ipAddresses] List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  /// [privateKeyPem] Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the [`file`](https://www.terraform.io/language/functions/file) interpolation function. Exactly one of `privateKeyPem` or `privateKeyPemWo` must be set.
  /// [privateKeyPemWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [privateKeyPemWoVersion] The version of the `privateKeyPemWo` write-only private key. Because the write-only key is not stored in state, this version is the only signal the provider has that the key changed: increment it to force the certificate request to be re-issued when rotating the key.
  /// [subject] The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  /// [uris] List of URIs for which a certificate is being requested (i.e. certificate subjects).
  const CertRequestArgs({
    this.dnsNames,
    this.ipAddresses,
    this.privateKeyPem,
    this.privateKeyPemWo,
    this.privateKeyPemWoVersion,
    this.subject,
    this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': ?dnsNames,
      'ipAddresses': ?ipAddresses,
      'privateKeyPem': ?privateKeyPem,
      'privateKeyPemWo': ?privateKeyPemWo,
      'privateKeyPemWoVersion': ?privateKeyPemWoVersion,
      'subject': ?pulumi.Input.mapOptionalInputValue<CertRequestSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'uris': ?uris,
    };
  }

  factory CertRequestArgs.fromMap(Map<String, dynamic> map) {
    return CertRequestArgs(
      dnsNames: (() { final guardedValue = map['dnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateKeyPem: (() { final guardedValue = map['privateKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPemWo: (() { final guardedValue = map['privateKeyPemWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPemWoVersion: (() { final guardedValue = map['privateKeyPemWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertRequestSubject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
