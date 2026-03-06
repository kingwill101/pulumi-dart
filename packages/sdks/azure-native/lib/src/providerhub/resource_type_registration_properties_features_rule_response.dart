// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The features rule.
class ResourceTypeRegistrationPropertiesFeaturesRuleResponse {
  /// The required feature policy.
  final pulumi.Input<String> requiredFeaturesPolicy;

  /// Creates a new [ResourceTypeRegistrationPropertiesFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  const ResourceTypeRegistrationPropertiesFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceTypeRegistrationPropertiesFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesFeaturesRuleResponse(
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy'] as String),
    );
  }
}

