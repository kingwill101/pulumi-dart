// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The features rule.
class ResourceProviderManifestPropertiesFeaturesRuleResponse {
  /// The required feature policy.
  final pulumi.Input<String> requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderManifestPropertiesFeaturesRuleResponse].
  /// [requiredFeaturesPolicy] The required feature policy.
  const ResourceProviderManifestPropertiesFeaturesRuleResponse({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderManifestPropertiesFeaturesRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesFeaturesRuleResponse(
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy'] as String),
    );
  }
}

