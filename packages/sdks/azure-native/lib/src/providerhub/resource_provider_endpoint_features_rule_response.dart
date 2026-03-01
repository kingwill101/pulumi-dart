// ignore_for_file: unused_element, unnecessary_cast


/// The feature rules.
class ResourceProviderEndpointFeaturesRuleResponse {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderEndpointFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceProviderEndpointFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderEndpointFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderEndpointFeaturesRuleResponse(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

