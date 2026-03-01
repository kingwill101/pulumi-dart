// ignore_for_file: unused_element, unnecessary_cast


/// The features rule.
class ResourceProviderManifestPropertiesFeaturesRuleResponse {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderManifestPropertiesFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceProviderManifestPropertiesFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderManifestPropertiesFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesFeaturesRuleResponse(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

