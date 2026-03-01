// ignore_for_file: unused_element, unnecessary_cast


/// The features rule.
class ResourceTypeEndpointFeaturesRule {
  /// The required feature policy.
  final String requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeEndpointFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceTypeEndpointFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceTypeEndpointFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEndpointFeaturesRule(
      requiredFeaturesPolicy: map['requiredFeaturesPolicy'] as String,
    );
  }
}

