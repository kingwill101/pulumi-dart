// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of an X.509 certificate. For informational purposes only.
class X509CertificateDetailsResponse {
  /// The time the certificate becomes invalid.
  final pulumi.Input<String> expiryTime;

  /// The entity that signed the certificate.
  final pulumi.Input<String> issuer;

  /// The type of public key in the certificate.
  final pulumi.Input<String> publicKeyType;

  /// The algorithm used to sign the certificate.
  final pulumi.Input<String> signatureAlgorithm;

  /// The time the certificate becomes valid.
  final pulumi.Input<String> startTime;

  /// The entity the certificate and public key belong to.
  final pulumi.Input<String> subject;

  /// Creates a new [X509CertificateDetailsResponse].
  /// [expiryTime] The time the certificate becomes invalid.
  /// [issuer] The entity that signed the certificate.
  /// [publicKeyType] The type of public key in the certificate.
  /// [signatureAlgorithm] The algorithm used to sign the certificate.
  /// [startTime] The time the certificate becomes valid.
  /// [subject] The entity the certificate and public key belong to.
  X509CertificateDetailsResponse({
    required this.expiryTime,
    required this.issuer,
    required this.publicKeyType,
    required this.signatureAlgorithm,
    required this.startTime,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiryTime': expiryTime,
      'issuer': issuer,
      'publicKeyType': publicKeyType,
      'signatureAlgorithm': signatureAlgorithm,
      'startTime': startTime,
      'subject': subject,
    };
  }

  factory X509CertificateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return X509CertificateDetailsResponse(
      expiryTime: pulumi.Input.fromValue(map['expiryTime'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      publicKeyType: pulumi.Input.fromValue(map['publicKeyType'] as String),
      signatureAlgorithm: pulumi.Input.fromValue(
        map['signatureAlgorithm'] as String,
      ),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
    );
  }
}
