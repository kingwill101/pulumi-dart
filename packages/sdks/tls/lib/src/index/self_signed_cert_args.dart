// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_signed_cert_subject.dart';

/// {@template pulumi_index_self_signed_cert_self_signed_cert_args_doc}
/// The set of arguments for SelfSignedCert.
/// {@endtemplate}
/// {@macro pulumi_index_self_signed_cert_self_signed_cert_args_doc}
class SelfSignedCertArgs {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  final pulumi.Input<List<String>> allowedUses;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? dnsNames;
  final pulumi.Input<int>? earlyRenewalHours;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? ipAddresses;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  final pulumi.Input<bool>? isCaCertificate;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  final pulumi.Input<int>? maxPathLength;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to.
  final pulumi.Input<String> privateKeyPem;
  /// Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool>? setAuthorityKeyId;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool>? setSubjectKeyId;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  final pulumi.Input<SelfSignedCertSubject>? subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? uris;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  final pulumi.Input<int> validityPeriodHours;

  /// Creates a new [SelfSignedCertArgs].
  /// [allowedUses] List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  /// [dnsNames] List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  /// [earlyRenewalHours] Optional.
  /// [ipAddresses] List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  /// [isCaCertificate] Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  /// [maxPathLength] Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  /// [privateKeyPem] Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to.
  /// [setAuthorityKeyId] Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [setSubjectKeyId] Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [subject] The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  /// [uris] List of URIs for which a certificate is being requested (i.e. certificate subjects).
  /// [validityPeriodHours] Number of hours, after initial issuing, that the certificate will remain valid for.
  SelfSignedCertArgs({
    required this.allowedUses,
    this.dnsNames,
    this.earlyRenewalHours,
    this.ipAddresses,
    this.isCaCertificate,
    this.maxPathLength,
    required this.privateKeyPem,
    this.setAuthorityKeyId,
    this.setSubjectKeyId,
    this.subject,
    this.uris,
    required this.validityPeriodHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUses': allowedUses,
      'dnsNames': ?dnsNames,
      'earlyRenewalHours': ?earlyRenewalHours,
      'ipAddresses': ?ipAddresses,
      'isCaCertificate': ?isCaCertificate,
      'maxPathLength': ?maxPathLength,
      'privateKeyPem': privateKeyPem,
      'setAuthorityKeyId': ?setAuthorityKeyId,
      'setSubjectKeyId': ?setSubjectKeyId,
      'subject': ?pulumi.Input.mapOptionalInputValue<SelfSignedCertSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'uris': ?uris,
      'validityPeriodHours': validityPeriodHours,
    };
  }

  factory SelfSignedCertArgs.fromMap(Map<String, dynamic> map) {
    return SelfSignedCertArgs(
      allowedUses: ((map['allowedUses'] as List).cast<String>()).input(),
      dnsNames: map['dnsNames'] == null ? null : ((map['dnsNames']! as List).cast<String>()).input(),
      earlyRenewalHours: map['earlyRenewalHours'] == null ? null : (map['earlyRenewalHours']! as int).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      isCaCertificate: map['isCaCertificate'] == null ? null : (map['isCaCertificate']! as bool).input(),
      maxPathLength: map['maxPathLength'] == null ? null : (map['maxPathLength']! as int).input(),
      privateKeyPem: (map['privateKeyPem'] as String).input(),
      setAuthorityKeyId: map['setAuthorityKeyId'] == null ? null : (map['setAuthorityKeyId']! as bool).input(),
      setSubjectKeyId: map['setSubjectKeyId'] == null ? null : (map['setSubjectKeyId']! as bool).input(),
      subject: map['subject'] == null ? null : (SelfSignedCertSubject.fromMap((map['subject']! as Map).cast<String, dynamic>())).input(),
      uris: map['uris'] == null ? null : ((map['uris']! as List).cast<String>()).input(),
      validityPeriodHours: (map['validityPeriodHours'] as int).input(),
    );
  }
}

