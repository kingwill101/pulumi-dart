// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_locally_signed_cert_locally_signed_cert_args_doc}
/// The set of arguments for LocallySignedCert.
/// {@endtemplate}
/// {@macro pulumi_index_locally_signed_cert_locally_signed_cert_args_doc}
class LocallySignedCertArgs {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `anyExtended`, `certSigning`, `clientAuth`, `codeSigning`, `contentCommitment`, `crlSigning`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `emailProtection`, `encipherOnly`, `ipsecEndSystem`, `ipsecTunnel`, `ipsecUser`, `keyAgreement`, `keyEncipherment`, `microsoftCommercialCodeSigning`, `microsoftKernelCodeSigning`, `microsoftServerGatedCrypto`, `netscapeServerGatedCrypto`, `ocspSigning`, `serverAuth`, `timestamping`.
  final pulumi.Input<List<String>> allowedUses;
  /// Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String> caCertPem;
  /// Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Exactly one of `caPrivateKeyPem` or `caPrivateKeyPemWo` must be set.
  final pulumi.Input<String?>? caPrivateKeyPem;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Unlike `caPrivateKeyPem`, the value provided here is never persisted to Terraform state. Requires `caPrivateKeyPemWoVersion` to be set, and exactly one of `caPrivateKeyPem` or `caPrivateKeyPemWo` must be set.
  final pulumi.Input<String?>? caPrivateKeyPemWo;
  /// The version of the `caPrivateKeyPemWo` write-only private key. Because the write-only key is not stored in state, this version is the only signal the provider has that the key changed: increment it to force the certificate to be re-issued when rotating the CA key.
  final pulumi.Input<int?>? caPrivateKeyPemWoVersion;
  /// Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String> certRequestPem;
  /// The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: `0`)
  final pulumi.Input<int?>? earlyRenewalHours;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  final pulumi.Input<bool?>? isCaCertificate;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `isCaCertificate` is `false`, this value is ignored.
  final pulumi.Input<int?>? maxPathLength;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool?>? setSubjectKeyId;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  final pulumi.Input<int> validityPeriodHours;

  /// Creates a new [LocallySignedCertArgs].
  /// [allowedUses] List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `anyExtended`, `certSigning`, `clientAuth`, `codeSigning`, `contentCommitment`, `crlSigning`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `emailProtection`, `encipherOnly`, `ipsecEndSystem`, `ipsecTunnel`, `ipsecUser`, `keyAgreement`, `keyEncipherment`, `microsoftCommercialCodeSigning`, `microsoftKernelCodeSigning`, `microsoftServerGatedCrypto`, `netscapeServerGatedCrypto`, `ocspSigning`, `serverAuth`, `timestamping`.
  /// [caCertPem] Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [caPrivateKeyPem] Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Exactly one of `caPrivateKeyPem` or `caPrivateKeyPemWo` must be set.
  /// [caPrivateKeyPemWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [caPrivateKeyPemWoVersion] The version of the `caPrivateKeyPemWo` write-only private key. Because the write-only key is not stored in state, this version is the only signal the provider has that the key changed: increment it to force the certificate to be re-issued when rotating the CA key.
  /// [certRequestPem] Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [earlyRenewalHours] The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: `0`)
  /// [isCaCertificate] Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  /// [maxPathLength] Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `isCaCertificate` is `false`, this value is ignored.
  /// [setSubjectKeyId] Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [validityPeriodHours] Number of hours, after initial issuing, that the certificate will remain valid for.
  const LocallySignedCertArgs({
    required this.allowedUses,
    required this.caCertPem,
    this.caPrivateKeyPem,
    this.caPrivateKeyPemWo,
    this.caPrivateKeyPemWoVersion,
    required this.certRequestPem,
    this.earlyRenewalHours,
    this.isCaCertificate,
    this.maxPathLength,
    this.setSubjectKeyId,
    required this.validityPeriodHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUses': allowedUses,
      'caCertPem': caCertPem,
      'caPrivateKeyPem': ?caPrivateKeyPem,
      'caPrivateKeyPemWo': ?caPrivateKeyPemWo,
      'caPrivateKeyPemWoVersion': ?caPrivateKeyPemWoVersion,
      'certRequestPem': certRequestPem,
      'earlyRenewalHours': ?earlyRenewalHours,
      'isCaCertificate': ?isCaCertificate,
      'maxPathLength': ?maxPathLength,
      'setSubjectKeyId': ?setSubjectKeyId,
      'validityPeriodHours': validityPeriodHours,
    };
  }

  factory LocallySignedCertArgs.fromMap(Map<String, dynamic> map) {
    return LocallySignedCertArgs(
      allowedUses: pulumi.Input.fromValue((map['allowedUses'] as List).cast<String>()),
      caCertPem: pulumi.Input.fromValue(map['caCertPem'] as String),
      caPrivateKeyPem: (() { final guardedValue = map['caPrivateKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caPrivateKeyPemWo: (() { final guardedValue = map['caPrivateKeyPemWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caPrivateKeyPemWoVersion: (() { final guardedValue = map['caPrivateKeyPemWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      certRequestPem: pulumi.Input.fromValue(map['certRequestPem'] as String),
      earlyRenewalHours: (() { final guardedValue = map['earlyRenewalHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      isCaCertificate: (() { final guardedValue = map['isCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxPathLength: (() { final guardedValue = map['maxPathLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      setSubjectKeyId: (() { final guardedValue = map['setSubjectKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validityPeriodHours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['validityPeriodHours'])),
    );
  }
}
