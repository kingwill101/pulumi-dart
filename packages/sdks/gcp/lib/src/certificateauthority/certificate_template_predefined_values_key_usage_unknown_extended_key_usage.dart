// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage {
  /// Required. The parts of an OID path. The most significant parts of the path come first.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] Required. The parts of an OID path. The most significant parts of the path come first.
  CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: ((map['objectIdPaths'] as List).cast<int>()).input(),
    );
  }
}

