// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing rule.
class ResourceTypeRegistrationPropertiesRoutingRuleResponse {
  /// Hosted resource type.
  final pulumi.Input<String>? hostResourceType;

  /// Creates a new [ResourceTypeRegistrationPropertiesRoutingRuleResponse].
  /// [hostResourceType] Hosted resource type.
  ResourceTypeRegistrationPropertiesRoutingRuleResponse({
    this.hostResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostResourceType': ?hostResourceType,
    };
  }

  factory ResourceTypeRegistrationPropertiesRoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesRoutingRuleResponse(
      hostResourceType: map['hostResourceType'] == null ? null : (map['hostResourceType'] as String).input(),
    );
  }
}

