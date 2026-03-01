// ignore_for_file: unused_element, unnecessary_cast


/// Each facet position adjustment consists of a single attribute name (i.e. facet key) along with a specified position.
class GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustmentResponse {
  /// The attribute name to force return as a facet. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters long.
  final String attributeName;
  /// This is the position in the request as explained above. It should be strictly positive be at most 100.
  final int position;

  /// Creates a new [GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustmentResponse].
  /// [attributeName] The attribute name to force return as a facet. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters long.
  /// [position] This is the position in the request as explained above. It should be strictly positive be at most 100.
  GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustmentResponse({
    required this.attributeName,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'position': position,
    };
  }

  factory GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustmentResponse(
      attributeName: map['attributeName'] as String,
      position: map['position'] as int,
    );
  }
}

