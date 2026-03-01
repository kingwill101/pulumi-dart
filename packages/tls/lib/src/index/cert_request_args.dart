// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_request_subject.dart';

/// {@template pulumi_index_cert_request_cert_request_args_doc}
/// The set of arguments for CertRequest.
/// {@endtemplate}
/// {@macro pulumi_index_cert_request_cert_request_args_doc}
class CertRequestArgs {
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? dnsNames;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? ipAddresses;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the `file` interpolation function.
  final pulumi.Input<String> privateKeyPem;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  final pulumi.Input<CertRequestSubject>? subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? uris;

  /// Creates a new [CertRequestArgs].
  /// [dnsNames] List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  /// [ipAddresses] List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  /// [privateKeyPem] Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the `file` interpolation function.
  /// [subject] The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  /// [uris] List of URIs for which a certificate is being requested (i.e. certificate subjects).
  CertRequestArgs({
    List<String>? dnsNames,
    List<String>? ipAddresses,
    required String privateKeyPem,
    CertRequestSubject? subject,
    List<String>? uris,
  }) :
      dnsNames = pulumi.Input.asOptionalInput<List<String>>(dnsNames),
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      privateKeyPem = pulumi.Input.asInput<String>(privateKeyPem),
      subject = pulumi.Input.asOptionalInput<CertRequestSubject>(subject),
      uris = pulumi.Input.asOptionalInput<List<String>>(uris);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsNames': ?dnsNames,
      'ipAddresses': ?ipAddresses,
      'privateKeyPem': privateKeyPem,
      'subject': ?pulumi.Input.mapOptionalInputValue<CertRequestSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'uris': ?uris,
    };
  }

  factory CertRequestArgs.fromMap(Map<String, dynamic> map) {
    return CertRequestArgs(
      dnsNames: map['dnsNames'] == null ? null : (map['dnsNames'] as List).cast<String>(),
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      privateKeyPem: map['privateKeyPem'] as String,
      subject: map['subject'] == null ? null : CertRequestSubject.fromMap((map['subject'] as Map).cast<String, dynamic>()),
      uris: map['uris'] == null ? null : (map['uris'] as List).cast<String>(),
    );
  }
}

