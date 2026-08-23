// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyBaselineValuesKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: pulumi.Input.fromValue((map['objectIdPaths'] as List).cast<int>()),
    );
  }
}
