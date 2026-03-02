// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_signed_cert_subject.dart';

/// Input properties used for looking up and filtering SelfSignedCert resources.
class SelfSignedCertState {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  final pulumi.Input<List<String>>? allowedUses;
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final pulumi.Input<String>? certPem;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? dnsNames;
  final pulumi.Input<int>? earlyRenewalHours;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? ipAddresses;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  final pulumi.Input<bool>? isCaCertificate;
  /// Name of the algorithm used when generating the private key provided in `private_key_pem`.
  final pulumi.Input<String>? keyAlgorithm;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  final pulumi.Input<int>? maxPathLength;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to.
  final pulumi.Input<String>? privateKeyPem;
  /// Is the certificate either expired (i.e. beyond the `validity_period_hours`) or ready for an early renewal (i.e. within the `early_renewal_hours`)?
  final pulumi.Input<bool>? readyForRenewal;
  /// Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool>? setAuthorityKeyId;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool>? setSubjectKeyId;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  final pulumi.Input<SelfSignedCertSubject>? subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  final pulumi.Input<List<String>>? uris;
  /// The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final pulumi.Input<String>? validityEndTime;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  final pulumi.Input<int>? validityPeriodHours;
  /// The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final pulumi.Input<String>? validityStartTime;

  /// Creates a new [SelfSignedCertState].
  /// [allowedUses] List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  /// [certPem] Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [dnsNames] List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  /// [earlyRenewalHours] Optional.
  /// [ipAddresses] List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  /// [isCaCertificate] Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  /// [keyAlgorithm] Name of the algorithm used when generating the private key provided in `private_key_pem`.
  /// [maxPathLength] Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  /// [privateKeyPem] Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to.
  /// [readyForRenewal] Is the certificate either expired (i.e. beyond the `validity_period_hours`) or ready for an early renewal (i.e. within the `early_renewal_hours`)?
  /// [setAuthorityKeyId] Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [setSubjectKeyId] Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [subject] The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  /// [uris] List of URIs for which a certificate is being requested (i.e. certificate subjects).
  /// [validityEndTime] The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  /// [validityPeriodHours] Number of hours, after initial issuing, that the certificate will remain valid for.
  /// [validityStartTime] The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  SelfSignedCertState({
    this.allowedUses,
    this.certPem,
    this.dnsNames,
    this.earlyRenewalHours,
    this.ipAddresses,
    this.isCaCertificate,
    this.keyAlgorithm,
    this.maxPathLength,
    this.privateKeyPem,
    this.readyForRenewal,
    this.setAuthorityKeyId,
    this.setSubjectKeyId,
    this.subject,
    this.uris,
    this.validityEndTime,
    this.validityPeriodHours,
    this.validityStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUses': ?allowedUses,
      'certPem': ?certPem,
      'dnsNames': ?dnsNames,
      'earlyRenewalHours': ?earlyRenewalHours,
      'ipAddresses': ?ipAddresses,
      'isCaCertificate': ?isCaCertificate,
      'keyAlgorithm': ?keyAlgorithm,
      'maxPathLength': ?maxPathLength,
      'privateKeyPem': ?privateKeyPem,
      'readyForRenewal': ?readyForRenewal,
      'setAuthorityKeyId': ?setAuthorityKeyId,
      'setSubjectKeyId': ?setSubjectKeyId,
      'subject': ?pulumi.Input.mapOptionalInputValue<SelfSignedCertSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'uris': ?uris,
      'validityEndTime': ?validityEndTime,
      'validityPeriodHours': ?validityPeriodHours,
      'validityStartTime': ?validityStartTime,
    };
  }

  factory SelfSignedCertState.fromMap(Map<String, dynamic> map) {
    return SelfSignedCertState(
      allowedUses: map['allowedUses'] == null ? null : ((map['allowedUses']! as List).cast<String>()).input(),
      certPem: map['certPem'] == null ? null : (map['certPem']! as String).input(),
      dnsNames: map['dnsNames'] == null ? null : ((map['dnsNames']! as List).cast<String>()).input(),
      earlyRenewalHours: map['earlyRenewalHours'] == null ? null : (map['earlyRenewalHours']! as int).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      isCaCertificate: map['isCaCertificate'] == null ? null : (map['isCaCertificate']! as bool).input(),
      keyAlgorithm: map['keyAlgorithm'] == null ? null : (map['keyAlgorithm']! as String).input(),
      maxPathLength: map['maxPathLength'] == null ? null : (map['maxPathLength']! as int).input(),
      privateKeyPem: map['privateKeyPem'] == null ? null : (map['privateKeyPem']! as String).input(),
      readyForRenewal: map['readyForRenewal'] == null ? null : (map['readyForRenewal']! as bool).input(),
      setAuthorityKeyId: map['setAuthorityKeyId'] == null ? null : (map['setAuthorityKeyId']! as bool).input(),
      setSubjectKeyId: map['setSubjectKeyId'] == null ? null : (map['setSubjectKeyId']! as bool).input(),
      subject: map['subject'] == null ? null : (SelfSignedCertSubject.fromMap((map['subject']! as Map).cast<String, dynamic>())).input(),
      uris: map['uris'] == null ? null : ((map['uris']! as List).cast<String>()).input(),
      validityEndTime: map['validityEndTime'] == null ? null : (map['validityEndTime']! as String).input(),
      validityPeriodHours: map['validityPeriodHours'] == null ? null : (map['validityPeriodHours']! as int).input(),
      validityStartTime: map['validityStartTime'] == null ? null : (map['validityStartTime']! as String).input(),
    );
  }
}

