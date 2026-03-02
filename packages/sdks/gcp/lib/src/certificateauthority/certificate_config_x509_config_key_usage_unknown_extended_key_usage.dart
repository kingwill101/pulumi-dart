// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: ((map['objectIdPaths'] as List).cast<int>()).input(),
    );
  }
}

