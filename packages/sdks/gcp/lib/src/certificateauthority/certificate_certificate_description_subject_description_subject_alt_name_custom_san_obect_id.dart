// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId {
  /// (Output)
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId].
  /// [objectIdPaths] (Output)
  const CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId({
    this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': ?objectIdPaths,
    };
  }

  factory CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId(
      objectIdPaths: (() { final guardedValue = map['objectIdPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
