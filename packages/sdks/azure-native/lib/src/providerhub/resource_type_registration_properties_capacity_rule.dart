// ignore_for_file: unused_element, unnecessary_cast


/// Capacity rule.
class ResourceTypeRegistrationPropertiesCapacityRule {
  /// Capacity policy.
  final String? capacityPolicy;
  /// Sku alias
  final String? skuAlias;

  /// Creates a new [ResourceTypeRegistrationPropertiesCapacityRule].
  /// [capacityPolicy] Capacity policy.
  /// [skuAlias] Sku alias
  ResourceTypeRegistrationPropertiesCapacityRule({
    this.capacityPolicy,
    this.skuAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityPolicy': ?capacityPolicy,
      'skuAlias': ?skuAlias,
    };
  }

  factory ResourceTypeRegistrationPropertiesCapacityRule.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesCapacityRule(
      capacityPolicy: map['capacityPolicy'] == null ? null : map['capacityPolicy'] as String,
      skuAlias: map['skuAlias'] == null ? null : map['skuAlias'] as String,
    );
  }
}

