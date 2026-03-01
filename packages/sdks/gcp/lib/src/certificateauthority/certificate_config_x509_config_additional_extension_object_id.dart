// ignore_for_file: unused_element, unnecessary_cast


class CertificateConfigX509ConfigAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  /// Creates a new [CertificateConfigX509ConfigAdditionalExtensionObjectId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CertificateConfigX509ConfigAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CertificateConfigX509ConfigAdditionalExtensionObjectId.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509ConfigAdditionalExtensionObjectId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}

