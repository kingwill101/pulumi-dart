// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The features rule.
class ResourceProviderManifestPropertiesFeaturesRule {
  /// The required feature policy.
  final pulumi.Input<String> requiredFeaturesPolicy;

  /// Creates a new [ResourceProviderManifestPropertiesFeaturesRule].
  /// [requiredFeaturesPolicy] The required feature policy.
  ResourceProviderManifestPropertiesFeaturesRule({
    required this.requiredFeaturesPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredFeaturesPolicy': requiredFeaturesPolicy,
    };
  }

  factory ResourceProviderManifestPropertiesFeaturesRule.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesFeaturesRule(
      requiredFeaturesPolicy: pulumi.Input.fromValue(map['requiredFeaturesPolicy'] as String),
    );
  }
}

