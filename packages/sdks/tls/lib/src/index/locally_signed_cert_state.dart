// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocallySignedCert resources.
class LocallySignedCertState {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  final pulumi.Input<List<String>>? allowedUses;

  /// Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String>? caCertPem;

  /// Name of the algorithm used when generating the private key provided in `ca_private_key_pem`.
  final pulumi.Input<String>? caKeyAlgorithm;

  /// Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String>? caPrivateKeyPem;

  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final pulumi.Input<String>? certPem;

  /// Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String>? certRequestPem;
  final pulumi.Input<int>? earlyRenewalHours;

  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  final pulumi.Input<bool>? isCaCertificate;

  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  final pulumi.Input<int>? maxPathLength;

  /// Is the certificate either expired (i.e. beyond the `validity_period_hours`) or ready for an early renewal (i.e. within the `early_renewal_hours`)?
  final pulumi.Input<bool>? readyForRenewal;

  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool>? setSubjectKeyId;

  /// The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final pulumi.Input<String>? validityEndTime;

  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  final pulumi.Input<int>? validityPeriodHours;

  /// The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final pulumi.Input<String>? validityStartTime;

  /// Creates a new [LocallySignedCertState].
  /// [allowedUses] List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  /// [caCertPem] Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [caKeyAlgorithm] Name of the algorithm used when generating the private key provided in `ca_private_key_pem`.
  /// [caPrivateKeyPem] Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [certPem] Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [certRequestPem] Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [earlyRenewalHours] Optional.
  /// [isCaCertificate] Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  /// [maxPathLength] Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  /// [readyForRenewal] Is the certificate either expired (i.e. beyond the `validity_period_hours`) or ready for an early renewal (i.e. within the `early_renewal_hours`)?
  /// [setSubjectKeyId] Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [validityEndTime] The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  /// [validityPeriodHours] Number of hours, after initial issuing, that the certificate will remain valid for.
  /// [validityStartTime] The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  LocallySignedCertState({
    this.allowedUses,
    this.caCertPem,
    this.caKeyAlgorithm,
    this.caPrivateKeyPem,
    this.certPem,
    this.certRequestPem,
    this.earlyRenewalHours,
    this.isCaCertificate,
    this.maxPathLength,
    this.readyForRenewal,
    this.setSubjectKeyId,
    this.validityEndTime,
    this.validityPeriodHours,
    this.validityStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUses': ?allowedUses,
      'caCertPem': ?caCertPem,
      'caKeyAlgorithm': ?caKeyAlgorithm,
      'caPrivateKeyPem': ?caPrivateKeyPem,
      'certPem': ?certPem,
      'certRequestPem': ?certRequestPem,
      'earlyRenewalHours': ?earlyRenewalHours,
      'isCaCertificate': ?isCaCertificate,
      'maxPathLength': ?maxPathLength,
      'readyForRenewal': ?readyForRenewal,
      'setSubjectKeyId': ?setSubjectKeyId,
      'validityEndTime': ?validityEndTime,
      'validityPeriodHours': ?validityPeriodHours,
      'validityStartTime': ?validityStartTime,
    };
  }

  factory LocallySignedCertState.fromMap(Map<String, dynamic> map) {
    return LocallySignedCertState(
      allowedUses: (() {
        final guardedValue = map['allowedUses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      caCertPem: (() {
        final guardedValue = map['caCertPem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caKeyAlgorithm: (() {
        final guardedValue = map['caKeyAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caPrivateKeyPem: (() {
        final guardedValue = map['caPrivateKeyPem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certPem: (() {
        final guardedValue = map['certPem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certRequestPem: (() {
        final guardedValue = map['certRequestPem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      earlyRenewalHours: (() {
        final guardedValue = map['earlyRenewalHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isCaCertificate: (() {
        final guardedValue = map['isCaCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxPathLength: (() {
        final guardedValue = map['maxPathLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      readyForRenewal: (() {
        final guardedValue = map['readyForRenewal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      setSubjectKeyId: (() {
        final guardedValue = map['setSubjectKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      validityEndTime: (() {
        final guardedValue = map['validityEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validityPeriodHours: (() {
        final guardedValue = map['validityPeriodHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      validityStartTime: (() {
        final guardedValue = map['validityStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
