// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.
class CertificateResponse {
  /// The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
  final pulumi.Input<String> issuer;
  /// The certificate is not valid after this time. Only present if parsed is true.
  final pulumi.Input<String> notAfterTime;
  /// The certificate is not valid before this time. Only present if parsed is true.
  final pulumi.Input<String> notBeforeTime;
  /// True if the certificate was parsed successfully.
  final pulumi.Input<bool> parsed;
  /// The raw certificate bytes in DER format.
  final pulumi.Input<String> rawDer;
  /// The certificate serial number as a hex string. Only present if parsed is true.
  final pulumi.Input<String> serialNumber;
  /// The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
  final pulumi.Input<String> sha256Fingerprint;
  /// The subject distinguished name in RFC 2253 format. Only present if parsed is true.
  final pulumi.Input<String> subject;
  /// The subject Alternative DNS names. Only present if parsed is true.
  final pulumi.Input<List<String>> subjectAlternativeDnsNames;

  /// Creates a new [CertificateResponse].
  /// [issuer] The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
  /// [notAfterTime] The certificate is not valid after this time. Only present if parsed is true.
  /// [notBeforeTime] The certificate is not valid before this time. Only present if parsed is true.
  /// [parsed] True if the certificate was parsed successfully.
  /// [rawDer] The raw certificate bytes in DER format.
  /// [serialNumber] The certificate serial number as a hex string. Only present if parsed is true.
  /// [sha256Fingerprint] The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
  /// [subject] The subject distinguished name in RFC 2253 format. Only present if parsed is true.
  /// [subjectAlternativeDnsNames] The subject Alternative DNS names. Only present if parsed is true.
  CertificateResponse({
    required this.issuer,
    required this.notAfterTime,
    required this.notBeforeTime,
    required this.parsed,
    required this.rawDer,
    required this.serialNumber,
    required this.sha256Fingerprint,
    required this.subject,
    required this.subjectAlternativeDnsNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
      'notAfterTime': notAfterTime,
      'notBeforeTime': notBeforeTime,
      'parsed': parsed,
      'rawDer': rawDer,
      'serialNumber': serialNumber,
      'sha256Fingerprint': sha256Fingerprint,
      'subject': subject,
      'subjectAlternativeDnsNames': subjectAlternativeDnsNames,
    };
  }

  factory CertificateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateResponse(
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      notAfterTime: pulumi.Input.fromValue(map['notAfterTime'] as String),
      notBeforeTime: pulumi.Input.fromValue(map['notBeforeTime'] as String),
      parsed: pulumi.Input.fromValue(map['parsed'] as bool),
      rawDer: pulumi.Input.fromValue(map['rawDer'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      sha256Fingerprint: pulumi.Input.fromValue(map['sha256Fingerprint'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAlternativeDnsNames: pulumi.Input.fromValue((map['subjectAlternativeDnsNames'] as List).cast<String>()),
    );
  }
}

