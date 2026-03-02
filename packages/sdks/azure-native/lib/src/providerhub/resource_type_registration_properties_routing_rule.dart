// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing rule.
class ResourceTypeRegistrationPropertiesRoutingRule {
  /// Hosted resource type.
  final pulumi.Input<String>? hostResourceType;

  /// Creates a new [ResourceTypeRegistrationPropertiesRoutingRule].
  /// [hostResourceType] Hosted resource type.
  ResourceTypeRegistrationPropertiesRoutingRule({
    this.hostResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostResourceType': ?hostResourceType,
    };
  }

  factory ResourceTypeRegistrationPropertiesRoutingRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesRoutingRule(
      hostResourceType: map['hostResourceType'] == null ? null : (map['hostResourceType'] as String).input(),
    );
  }
}

