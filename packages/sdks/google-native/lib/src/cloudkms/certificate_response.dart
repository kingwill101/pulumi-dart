// ignore_for_file: unused_element, unnecessary_cast


/// A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.
class CertificateResponse {
  /// The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
  final String issuer;
  /// The certificate is not valid after this time. Only present if parsed is true.
  final String notAfterTime;
  /// The certificate is not valid before this time. Only present if parsed is true.
  final String notBeforeTime;
  /// True if the certificate was parsed successfully.
  final bool parsed;
  /// The raw certificate bytes in DER format.
  final String rawDer;
  /// The certificate serial number as a hex string. Only present if parsed is true.
  final String serialNumber;
  /// The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
  final String sha256Fingerprint;
  /// The subject distinguished name in RFC 2253 format. Only present if parsed is true.
  final String subject;
  /// The subject Alternative DNS names. Only present if parsed is true.
  final List<String> subjectAlternativeDnsNames;

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
      issuer: map['issuer'] as String,
      notAfterTime: map['notAfterTime'] as String,
      notBeforeTime: map['notBeforeTime'] as String,
      parsed: map['parsed'] as bool,
      rawDer: map['rawDer'] as String,
      serialNumber: map['serialNumber'] as String,
      sha256Fingerprint: map['sha256Fingerprint'] as String,
      subject: map['subject'] as String,
      subjectAlternativeDnsNames: (map['subjectAlternativeDnsNames'] as List).cast<String>(),
    );
  }
}

