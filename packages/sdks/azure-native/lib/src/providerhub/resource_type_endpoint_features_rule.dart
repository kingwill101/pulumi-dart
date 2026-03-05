// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The features rule.
class ResourceTypeEndpointFeaturesRule {
  /// The required feature policy.
  final pulumi.Input<String> requiredFeaturesPolicy;

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
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy'] as String),
    );
  }
}

