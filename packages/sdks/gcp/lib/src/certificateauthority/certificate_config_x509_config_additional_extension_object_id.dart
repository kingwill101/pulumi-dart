// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateConfigX509ConfigAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [CertificateConfigX509ConfigAdditionalExtensionObjectId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const CertificateConfigX509ConfigAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CertificateConfigX509ConfigAdditionalExtensionObjectId.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509ConfigAdditionalExtensionObjectId(
      objectIdPaths: pulumi.Input.fromValue((map['objectIdPaths'] as List).cast<int>()),
    );
  }
}
