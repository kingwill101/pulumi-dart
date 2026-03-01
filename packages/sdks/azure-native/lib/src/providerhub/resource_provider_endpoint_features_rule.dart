// ignore_for_file: unused_element, unnecessary_cast


/// The feature rules.
class ResourceProviderEndpointFeaturesRule {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderEndpointFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceProviderEndpointFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderEndpointFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceProviderEndpointFeaturesRule(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

