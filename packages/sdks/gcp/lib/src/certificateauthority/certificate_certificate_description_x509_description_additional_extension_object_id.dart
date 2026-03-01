// ignore_for_file: unused_element, unnecessary_cast


class CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int>? objectIdPaths;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId({
    this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': ?objectIdPaths,
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId(
      objectIdPaths: map['objectIdPaths'] == null ? null : (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}

