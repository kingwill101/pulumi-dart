// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Capacity rule.
class ResourceTypeRegistrationPropertiesCapacityRuleResponse {
  /// Capacity policy.
  final pulumi.Input<String>? capacityPolicy;
  /// Sku alias
  final pulumi.Input<String>? skuAlias;

  /// Creates a new [ResourceTypeRegistrationPropertiesCapacityRuleResponse].
  /// [capacityPolicy] Capacity policy.
  /// [skuAlias] Sku alias
  ResourceTypeRegistrationPropertiesCapacityRuleResponse({
    this.capacityPolicy,
    this.skuAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityPolicy': ?capacityPolicy,
      'skuAlias': ?skuAlias,
    };
  }

  factory ResourceTypeRegistrationPropertiesCapacityRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesCapacityRuleResponse(
      capacityPolicy: map['capacityPolicy'] == null ? null : (map['capacityPolicy']! as String).input(),
      skuAlias: map['skuAlias'] == null ? null : (map['skuAlias']! as String).input(),
    );
  }
}

