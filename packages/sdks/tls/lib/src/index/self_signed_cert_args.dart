// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_signed_cert_subject.dart';

/// {@template pulumi_index_self_signed_cert_self_signed_cert_args_doc}
/// The set of arguments for SelfSignedCert.
/// {@endtemplate}
/// {@macro pulumi_index_self_signed_cert_self_signed_cert_args_doc}
class SelfSignedCertArgs {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `anyExtended`, `certSigning`, `clientAuth`, `codeSigning`, `contentCommitment`, `crlSigning`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `emailProtection`, `encipherOnly`, `ipsecEndSystem`, `ipsecTunnel`, `ipsecUser`, `keyAgreement`, `keyEncipherment`, `microsoftCommercialCodeSigning`, `microsoftKernelCodeSigning`, `microsoftServerGatedCrypto`, `netscapeServerGatedCrypto`, `ocspSigning`, `serverAuth`, `timestamping`.
  final pulumi.Input<List<String>> allowedUses;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>?>? dnsNames;
  /// The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: `0`)
  final pulumi.Input<int?>? earlyRenewalHours;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>?>? ipAddresses;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  final pulumi.Input<bool?>? isCaCertificate;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `isCaCertificate` is `false`, this value is ignored.
  final pulumi.Input<int?>? maxPathLength;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the [`file`](https://www.terraform.io/language/functions/file) interpolation function. Exactly one of `privateKeyPem` or `privateKeyPemWo` must be set.
  final pulumi.Input<String?>? privateKeyPem;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. Unlike `privateKeyPem`, the value provided here is never persisted to Terraform state. Requires `privateKeyPemWoVersion` to be set, and exactly one of `privateKeyPem` or `privateKeyPemWo` must be set.
  final pulumi.Input<String?>? privateKeyPemWo;
  /// The version of the `privateKeyPemWo` write-only private key. Because the write-only key is not stored in state, this version is the only signal the provider has that the key changed: increment it to force the certificate to be re-issued when rotating the key.
  final pulumi.Input<int?>? privateKeyPemWoVersion;
  /// Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool?>? setAuthorityKeyId;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool?>? setSubjectKeyId;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  final pulumi.Input<SelfSignedCertSubject?>? subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>?>? uris;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  final pulumi.Input<int> validityPeriodHours;

  /// Creates a new [SelfSignedCertArgs].
  /// [allowedUses] List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `anyExtended`, `certSigning`, `clientAuth`, `codeSigning`, `contentCommitment`, `crlSigning`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `emailProtection`, `encipherOnly`, `ipsecEndSystem`, `ipsecTunnel`, `ipsecUser`, `keyAgreement`, `keyEncipherment`, `microsoftCommercialCodeSigning`, `microsoftKernelCodeSigning`, `microsoftServerGatedCrypto`, `netscapeServerGatedCrypto`, `ocspSigning`, `serverAuth`, `timestamping`.
  /// [dnsNames] List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  /// [earlyRenewalHours] The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: `0`)
  /// [ipAddresses] List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  /// [isCaCertificate] Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  /// [maxPathLength] Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `isCaCertificate` is `false`, this value is ignored.
  /// [privateKeyPem] Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the [`file`](https://www.terraform.io/language/functions/file) interpolation function. Exactly one of `privateKeyPem` or `privateKeyPemWo` must be set.
  /// [privateKeyPemWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [privateKeyPemWoVersion] The version of the `privateKeyPemWo` write-only private key. Because the write-only key is not stored in state, this version is the only signal the provider has that the key changed: increment it to force the certificate to be re-issued when rotating the key.
  /// [setAuthorityKeyId] Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [setSubjectKeyId] Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [subject] The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  /// [uris] List of URIs for which a certificate is being requested (i.e. certificate subjects).
  /// [validityPeriodHours] Number of hours, after initial issuing, that the certificate will remain valid for.
  const SelfSignedCertArgs({
    required this.allowedUses,
    this.dnsNames,
    this.earlyRenewalHours,
    this.ipAddresses,
    this.isCaCertificate,
    this.maxPathLength,
    this.privateKeyPem,
    this.privateKeyPemWo,
    this.privateKeyPemWoVersion,
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
      'privateKeyPem': ?privateKeyPem,
      'privateKeyPemWo': ?privateKeyPemWo,
      'privateKeyPemWoVersion': ?privateKeyPemWoVersion,
      'setAuthorityKeyId': ?setAuthorityKeyId,
      'setSubjectKeyId': ?setSubjectKeyId,
      'subject': ?pulumi.Input.mapOptionalInputValue<SelfSignedCertSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'uris': ?uris,
      'validityPeriodHours': validityPeriodHours,
    };
  }

  factory SelfSignedCertArgs.fromMap(Map<String, dynamic> map) {
    return SelfSignedCertArgs(
      allowedUses: pulumi.Input.fromValue((map['allowedUses'] as List).cast<String>()),
      dnsNames: (() { final guardedValue = map['dnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      earlyRenewalHours: (() { final guardedValue = map['earlyRenewalHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isCaCertificate: (() { final guardedValue = map['isCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxPathLength: (() { final guardedValue = map['maxPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      privateKeyPem: (() { final guardedValue = map['privateKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPemWo: (() { final guardedValue = map['privateKeyPemWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPemWoVersion: (() { final guardedValue = map['privateKeyPemWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      setAuthorityKeyId: (() { final guardedValue = map['setAuthorityKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      setSubjectKeyId: (() { final guardedValue = map['setSubjectKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfSignedCertSubject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uris: (() { final guardedValue = map['uris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      validityPeriodHours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['validityPeriodHours'])),
    );
  }
}
