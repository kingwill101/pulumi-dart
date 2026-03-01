// ignore_for_file: unused_element, unnecessary_cast


/// The features rule.
class ResourceTypeEndpointFeaturesRuleResponse {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeEndpointFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceTypeEndpointFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceTypeEndpointFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEndpointFeaturesRuleResponse(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

