// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_locally_signed_cert_locally_signed_cert_args_doc}
/// The set of arguments for LocallySignedCert.
/// {@endtemplate}
/// {@macro pulumi_index_locally_signed_cert_locally_signed_cert_args_doc}
class LocallySignedCertArgs {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  final pulumi.Input<List<String>> allowedUses;
  /// Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String> caCertPem;
  /// Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String> caPrivateKeyPem;
  /// Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  final pulumi.Input<String> certRequestPem;
  final pulumi.Input<int>? earlyRenewalHours;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  final pulumi.Input<bool>? isCaCertificate;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  final pulumi.Input<int>? maxPathLength;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  final pulumi.Input<bool>? setSubjectKeyId;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  final pulumi.Input<int> validityPeriodHours;

  /// Creates a new [LocallySignedCertArgs].
  /// [allowedUses] List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `any_extended`, `cert_signing`, `client_auth`, `code_signing`, `content_commitment`, `crl_signing`, `data_encipherment`, `decipher_only`, `digital_signature`, `email_protection`, `encipher_only`, `ipsec_end_system`, `ipsec_tunnel`, `ipsec_user`, `key_agreement`, `key_encipherment`, `microsoft_commercial_code_signing`, `microsoft_kernel_code_signing`, `microsoft_server_gated_crypto`, `netscape_server_gated_crypto`, `ocsp_signing`, `server_auth`, `timestamping`.
  /// [caCertPem] Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [caPrivateKeyPem] Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [certRequestPem] Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  /// [earlyRenewalHours] Optional.
  /// [isCaCertificate] Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  /// [maxPathLength] Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `is_ca_certificate` is `false`, this value is ignored.
  /// [setSubjectKeyId] Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  /// [validityPeriodHours] Number of hours, after initial issuing, that the certificate will remain valid for.
  LocallySignedCertArgs({
    required pulumi.Output<List<String>> allowedUses,
    required pulumi.Output<String> caCertPem,
    required pulumi.Output<String> caPrivateKeyPem,
    required pulumi.Output<String> certRequestPem,
    pulumi.Output<int>? earlyRenewalHours,
    pulumi.Output<bool>? isCaCertificate,
    pulumi.Output<int>? maxPathLength,
    pulumi.Output<bool>? setSubjectKeyId,
    required pulumi.Output<int> validityPeriodHours,
  }) :
      allowedUses = pulumi.Input.asInput<List<String>>(allowedUses),
      caCertPem = pulumi.Input.asInput<String>(caCertPem),
      caPrivateKeyPem = pulumi.Input.asInput<String>(caPrivateKeyPem),
      certRequestPem = pulumi.Input.asInput<String>(certRequestPem),
      earlyRenewalHours = pulumi.Input.asOptionalInput<int>(earlyRenewalHours),
      isCaCertificate = pulumi.Input.asOptionalInput<bool>(isCaCertificate),
      maxPathLength = pulumi.Input.asOptionalInput<int>(maxPathLength),
      setSubjectKeyId = pulumi.Input.asOptionalInput<bool>(setSubjectKeyId),
      validityPeriodHours = pulumi.Input.asInput<int>(validityPeriodHours);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUses': allowedUses,
      'caCertPem': caCertPem,
      'caPrivateKeyPem': caPrivateKeyPem,
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
      allowedUses: pulumi.Output.create<List<String>>((map['allowedUses'] as List).cast<String>()),
      caCertPem: pulumi.Output.create<String>(map['caCertPem'] as String),
      caPrivateKeyPem: pulumi.Output.create<String>(map['caPrivateKeyPem'] as String),
      certRequestPem: pulumi.Output.create<String>(map['certRequestPem'] as String),
      earlyRenewalHours: map['earlyRenewalHours'] == null ? null : pulumi.Output.create<int>(map['earlyRenewalHours'] as int),
      isCaCertificate: map['isCaCertificate'] == null ? null : pulumi.Output.create<bool>(map['isCaCertificate'] as bool),
      maxPathLength: map['maxPathLength'] == null ? null : pulumi.Output.create<int>(map['maxPathLength'] as int),
      setSubjectKeyId: map['setSubjectKeyId'] == null ? null : pulumi.Output.create<bool>(map['setSubjectKeyId'] as bool),
      validityPeriodHours: pulumi.Output.create<int>(map['validityPeriodHours'] as int),
    );
  }
}

