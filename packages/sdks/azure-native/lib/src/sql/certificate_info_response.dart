// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate information
class CertificateInfoResponse {
  /// The certificate name
  final pulumi.Input<String> certificateName;

  /// The certificate expiry date
  final pulumi.Input<String> expiryDate;

  /// Creates a new [CertificateInfoResponse].
  /// [certificateName] The certificate name
  /// [expiryDate] The certificate expiry date
  CertificateInfoResponse({
    required this.certificateName,
    required this.expiryDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'expiryDate': expiryDate,
    };
  }

  factory CertificateInfoResponse.fromMap(Map<String, dynamic> map) {
    return CertificateInfoResponse(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      expiryDate: pulumi.Input.fromValue(map['expiryDate'] as String),
    );
  }
}
