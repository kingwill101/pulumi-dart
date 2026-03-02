// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_response.dart';

/// Stores information about a certificate.
class CertificateAttributesResponse {
  /// The X.509 extension for CertificateTemplate.
  final pulumi.Input<CertificateTemplateResponse> certificateTemplate;
  /// The encoded certificate fingerprint.
  final pulumi.Input<String> fingerprint;
  /// The name of the issuer of this certificate.
  final pulumi.Input<String> issuer;
  /// Serial number of the certificate, Example: "123456789".
  final pulumi.Input<String> serialNumber;
  /// The subject name of this certificate.
  final pulumi.Input<String> subject;
  /// The certificate thumbprint.
  final pulumi.Input<String> thumbprint;
  /// Validation state of this certificate.
  final pulumi.Input<String> validationState;
  /// Certificate not valid at or after this timestamp.
  final pulumi.Input<String> validityExpirationTime;
  /// Certificate not valid before this timestamp.
  final pulumi.Input<String> validityStartTime;

  /// Creates a new [CertificateAttributesResponse].
  /// [certificateTemplate] The X.509 extension for CertificateTemplate.
  /// [fingerprint] The encoded certificate fingerprint.
  /// [issuer] The name of the issuer of this certificate.
  /// [serialNumber] Serial number of the certificate, Example: "123456789".
  /// [subject] The subject name of this certificate.
  /// [thumbprint] The certificate thumbprint.
  /// [validationState] Validation state of this certificate.
  /// [validityExpirationTime] Certificate not valid at or after this timestamp.
  /// [validityStartTime] Certificate not valid before this timestamp.
  CertificateAttributesResponse({
    required this.certificateTemplate,
    required this.fingerprint,
    required this.issuer,
    required this.serialNumber,
    required this.subject,
    required this.thumbprint,
    required this.validationState,
    required this.validityExpirationTime,
    required this.validityStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTemplate': pulumi.Input.mapInputValue<CertificateTemplateResponse, Map<String, dynamic>>(certificateTemplate, (value) => value.toMap()),
      'fingerprint': fingerprint,
      'issuer': issuer,
      'serialNumber': serialNumber,
      'subject': subject,
      'thumbprint': thumbprint,
      'validationState': validationState,
      'validityExpirationTime': validityExpirationTime,
      'validityStartTime': validityStartTime,
    };
  }

  factory CertificateAttributesResponse.fromMap(Map<String, dynamic> map) {
    return CertificateAttributesResponse(
      certificateTemplate: (CertificateTemplateResponse.fromMap((map['certificateTemplate'] as Map).cast<String, dynamic>())).input(),
      fingerprint: (map['fingerprint'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      serialNumber: (map['serialNumber'] as String).input(),
      subject: (map['subject'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
      validationState: (map['validationState'] as String).input(),
      validityExpirationTime: (map['validityExpirationTime'] as String).input(),
      validityStartTime: (map['validityStartTime'] as String).input(),
    );
  }
}

