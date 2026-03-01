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
    pulumi.Output<List<String>>? allowedUses,
    pulumi.Output<String>? caCertPem,
    pulumi.Output<String>? caKeyAlgorithm,
    pulumi.Output<String>? caPrivateKeyPem,
    pulumi.Output<String>? certPem,
    pulumi.Output<String>? certRequestPem,
    pulumi.Output<int>? earlyRenewalHours,
    pulumi.Output<bool>? isCaCertificate,
    pulumi.Output<int>? maxPathLength,
    pulumi.Output<bool>? readyForRenewal,
    pulumi.Output<bool>? setSubjectKeyId,
    pulumi.Output<String>? validityEndTime,
    pulumi.Output<int>? validityPeriodHours,
    pulumi.Output<String>? validityStartTime,
  }) :
      allowedUses = pulumi.Input.asOptionalInput<List<String>>(allowedUses),
      caCertPem = pulumi.Input.asOptionalInput<String>(caCertPem),
      caKeyAlgorithm = pulumi.Input.asOptionalInput<String>(caKeyAlgorithm),
      caPrivateKeyPem = pulumi.Input.asOptionalInput<String>(caPrivateKeyPem),
      certPem = pulumi.Input.asOptionalInput<String>(certPem),
      certRequestPem = pulumi.Input.asOptionalInput<String>(certRequestPem),
      earlyRenewalHours = pulumi.Input.asOptionalInput<int>(earlyRenewalHours),
      isCaCertificate = pulumi.Input.asOptionalInput<bool>(isCaCertificate),
      maxPathLength = pulumi.Input.asOptionalInput<int>(maxPathLength),
      readyForRenewal = pulumi.Input.asOptionalInput<bool>(readyForRenewal),
      setSubjectKeyId = pulumi.Input.asOptionalInput<bool>(setSubjectKeyId),
      validityEndTime = pulumi.Input.asOptionalInput<String>(validityEndTime),
      validityPeriodHours = pulumi.Input.asOptionalInput<int>(validityPeriodHours),
      validityStartTime = pulumi.Input.asOptionalInput<String>(validityStartTime);

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
      allowedUses: map['allowedUses'] == null ? null : pulumi.Output.create<List<String>>((map['allowedUses'] as List).cast<String>()),
      caCertPem: map['caCertPem'] == null ? null : pulumi.Output.create<String>(map['caCertPem'] as String),
      caKeyAlgorithm: map['caKeyAlgorithm'] == null ? null : pulumi.Output.create<String>(map['caKeyAlgorithm'] as String),
      caPrivateKeyPem: map['caPrivateKeyPem'] == null ? null : pulumi.Output.create<String>(map['caPrivateKeyPem'] as String),
      certPem: map['certPem'] == null ? null : pulumi.Output.create<String>(map['certPem'] as String),
      certRequestPem: map['certRequestPem'] == null ? null : pulumi.Output.create<String>(map['certRequestPem'] as String),
      earlyRenewalHours: map['earlyRenewalHours'] == null ? null : pulumi.Output.create<int>(map['earlyRenewalHours'] as int),
      isCaCertificate: map['isCaCertificate'] == null ? null : pulumi.Output.create<bool>(map['isCaCertificate'] as bool),
      maxPathLength: map['maxPathLength'] == null ? null : pulumi.Output.create<int>(map['maxPathLength'] as int),
      readyForRenewal: map['readyForRenewal'] == null ? null : pulumi.Output.create<bool>(map['readyForRenewal'] as bool),
      setSubjectKeyId: map['setSubjectKeyId'] == null ? null : pulumi.Output.create<bool>(map['setSubjectKeyId'] as bool),
      validityEndTime: map['validityEndTime'] == null ? null : pulumi.Output.create<String>(map['validityEndTime'] as String),
      validityPeriodHours: map['validityPeriodHours'] == null ? null : pulumi.Output.create<int>(map['validityPeriodHours'] as int),
      validityStartTime: map['validityStartTime'] == null ? null : pulumi.Output.create<String>(map['validityStartTime'] as String),
    );
  }
}

