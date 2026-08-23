// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage({
    this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': ?objectIdPaths,
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: (() { final guardedValue = map['objectIdPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
