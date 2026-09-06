// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The features rule.
class ResourceTypeRegistrationPropertiesFeaturesRule {
  /// The required feature policy.
  final pulumi.Input<dynamic> requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  const ResourceTypeRegistrationPropertiesFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesFeaturesRule(
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy']),
    );
  }
}
