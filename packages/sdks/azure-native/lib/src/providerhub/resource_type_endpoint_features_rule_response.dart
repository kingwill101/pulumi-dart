// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The features rule.
class ResourceTypeEndpointFeaturesRuleResponse {
  /// The required feature policy.
  final pulumi.Input<String> requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeEndpointFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceTypeEndpointFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'requiredFeaturesPolicy': requiredFeaturesPolicy};
  }

  factory ResourceTypeEndpointFeaturesRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeEndpointFeaturesRuleResponse(
      requiredFeaturesPolicy: pulumi.Input.fromValue(
        map['requiredFeaturesPolicy'] as String,
      ),
    );
  }
}
