// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The feature rules.
class ResourceProviderEndpointFeaturesRuleResponse {
  /// The required feature policy.
  final pulumi.Input<String> requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderEndpointFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  const ResourceProviderEndpointFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderEndpointFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderEndpointFeaturesRuleResponse(
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy'] as String),
    );
  }
}
