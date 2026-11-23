// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final pulumi.Input<List<int>> objectIdPaths;

  /// Creates a new [CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  const CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension(
      objectIdPaths: pulumi.Input.fromValue((map['objectIdPaths'] as List).cast<int>()),
    );
  }
}
