// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EkmConnectionServiceResolverServerCertificate {
  /// (Output)
  /// Output only. The issuer distinguished name in RFC 2253 format. Only present if parsed is true.
  final pulumi.Input<String?>? issuer;
  /// (Output)
  /// Output only. The certificate is not valid after this time. Only present if parsed is true.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? notAfterTime;
  /// (Output)
  /// Output only. The certificate is not valid before this time. Only present if parsed is true.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? notBeforeTime;
  /// (Output)
  /// Output only. True if the certificate was parsed successfully.
  final pulumi.Input<bool?>? parsed;
  /// Required. The raw certificate bytes in DER format. A base64-encoded string.
  final pulumi.Input<String> rawDer;
  /// (Output)
  /// Output only. The certificate serial number as a hex string. Only present if parsed is true.
  final pulumi.Input<String?>? serialNumber;
  /// (Output)
  /// Output only. The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.
  final pulumi.Input<String?>? sha256Fingerprint;
  /// (Output)
  /// Output only. The subject distinguished name in RFC 2253 format. Only present if parsed is true.
  final pulumi.Input<String?>? subject;
  /// (Output)
  /// Output only. The subject Alternative DNS names. Only present if parsed is true.
  final pulumi.Input<List<String>?>? subjectAlternativeDnsNames;

  /// Creates a new [EkmConnectionServiceResolverServerCertificate].
  /// [issuer] (Output)
  /// [notAfterTime] (Output)
  /// [notBeforeTime] (Output)
  /// [parsed] (Output)
  /// [rawDer] Required. The raw certificate bytes in DER format. A base64-encoded string.
  /// [serialNumber] (Output)
  /// [sha256Fingerprint] (Output)
  /// [subject] (Output)
  /// [subjectAlternativeDnsNames] (Output)
  const EkmConnectionServiceResolverServerCertificate({
    this.issuer,
    this.notAfterTime,
    this.notBeforeTime,
    this.parsed,
    required this.rawDer,
    this.serialNumber,
    this.sha256Fingerprint,
    this.subject,
    this.subjectAlternativeDnsNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': ?issuer,
      'notAfterTime': ?notAfterTime,
      'notBeforeTime': ?notBeforeTime,
      'parsed': ?parsed,
      'rawDer': rawDer,
      'serialNumber': ?serialNumber,
      'sha256Fingerprint': ?sha256Fingerprint,
      'subject': ?subject,
      'subjectAlternativeDnsNames': ?subjectAlternativeDnsNames,
    };
  }

  factory EkmConnectionServiceResolverServerCertificate.fromMap(Map<String, dynamic> map) {
    return EkmConnectionServiceResolverServerCertificate(
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfterTime: (() { final guardedValue = map['notAfterTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBeforeTime: (() { final guardedValue = map['notBeforeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parsed: (() { final guardedValue = map['parsed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rawDer: pulumi.Input.fromValue(map['rawDer'] as String),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256Fingerprint: (() { final guardedValue = map['sha256Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeDnsNames: (() { final guardedValue = map['subjectAlternativeDnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
