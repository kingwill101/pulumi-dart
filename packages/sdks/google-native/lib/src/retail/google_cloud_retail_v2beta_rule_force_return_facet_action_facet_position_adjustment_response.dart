// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Each facet position adjustment consists of a single attribute name (i.e. facet key) along with a specified position.
class GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustmentResponse {
  /// The attribute name to force return as a facet. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters long.
  final pulumi.Input<String> attributeName;
  /// This is the position in the request as explained above. It should be strictly positive be at most 100.
  final pulumi.Input<int> position;

  /// Creates a new [GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustmentResponse].
  /// [attributeName] The attribute name to force return as a facet. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters long.
  /// [position] This is the position in the request as explained above. It should be strictly positive be at most 100.
  GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustmentResponse({
    required this.attributeName,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'position': position,
    };
  }

  factory GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleForceReturnFacetActionFacetPositionAdjustmentResponse(
      attributeName: (map['attributeName'] as String).input(),
      position: (map['position'] as int).input(),
    );
  }
}

