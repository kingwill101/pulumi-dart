// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateTemplatePredefinedValuesPolicyId {
  /// Required. The parts of an OID path. The most significant parts of the path come first.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [CertificateTemplatePredefinedValuesPolicyId].
  /// [objectIdPaths] Required. The parts of an OID path. The most significant parts of the path come first.
  CertificateTemplatePredefinedValuesPolicyId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CertificateTemplatePredefinedValuesPolicyId.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesPolicyId(
      objectIdPaths: pulumi.Input.fromValue((map['objectIdPaths'] as List).cast<int>()),
    );
  }
}

