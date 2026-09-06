// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The feature rules.
class ResourceProviderEndpointFeaturesRule {
  /// The required feature policy.
  final pulumi.Input<dynamic> requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderEndpointFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  const ResourceProviderEndpointFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderEndpointFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceProviderEndpointFeaturesRule(
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy']),
    );
  }
}
