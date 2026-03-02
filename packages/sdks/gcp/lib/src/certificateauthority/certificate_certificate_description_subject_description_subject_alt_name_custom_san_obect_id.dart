// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId {
  /// (Output)
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId].
  /// [objectIdPaths] (Output)
  CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId({
    this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': ?objectIdPaths,
    };
  }

  factory CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId(
      objectIdPaths: map['objectIdPaths'] == null ? null : ((map['objectIdPaths'] as List).cast<int>()).input(),
    );
  }
}

