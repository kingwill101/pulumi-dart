// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorSecretSecretCustomerCertificate {
  /// The key vault certificate expiration date.
  final pulumi.Input<String> expirationDate;
  /// The key vault certificate ID.
  final pulumi.Input<String> keyVaultCertificateId;
  /// One or more `subject alternative names` contained within the key vault certificate.
  final pulumi.Input<List<String>> subjectAlternativeNames;

  /// Creates a new [GetFrontdoorSecretSecretCustomerCertificate].
  /// [expirationDate] The key vault certificate expiration date.
  /// [keyVaultCertificateId] The key vault certificate ID.
  /// [subjectAlternativeNames] One or more `subject alternative names` contained within the key vault certificate.
  const GetFrontdoorSecretSecretCustomerCertificate({
    required this.expirationDate,
    required this.keyVaultCertificateId,
    required this.subjectAlternativeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'keyVaultCertificateId': keyVaultCertificateId,
      'subjectAlternativeNames': subjectAlternativeNames,
    };
  }

  factory GetFrontdoorSecretSecretCustomerCertificate.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecretSecretCustomerCertificate(
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      keyVaultCertificateId: pulumi.Input.fromValue(map['keyVaultCertificateId'] as String),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
    );
  }
}
