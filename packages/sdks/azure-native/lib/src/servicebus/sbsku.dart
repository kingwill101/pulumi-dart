// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_name.dart';
import 'sku_tier.dart';

/// SKU of the namespace.
class SBSku {
  /// Messaging units for your service bus premium namespace. Valid capacities are {1, 2, 4, 8, 16} multiples of your properties.premiumMessagingPartitions setting. For example, If properties.premiumMessagingPartitions is 1 then possible capacity values are 1, 2, 4, 8, and 16. If properties.premiumMessagingPartitions is 4 then possible capacity values are 4, 8, 16, 32 and 64
  final pulumi.Input<int>? capacity;
  /// Name of this SKU.
  final pulumi.Input<SkuName> name;
  /// The billing tier of this particular SKU.
  final pulumi.Input<SkuTier>? tier;

  /// Creates a new [SBSku].
  /// [capacity] Messaging units for your service bus premium namespace. Valid capacities are {1, 2, 4, 8, 16} multiples of your properties.premiumMessagingPartitions setting. For example, If properties.premiumMessagingPartitions is 1 then possible capacity values are 1, 2, 4, 8, and 16. If properties.premiumMessagingPartitions is 4 then possible capacity values are 4, 8, 16, 32 and 64
  /// [name] Name of this SKU.
  /// [tier] The billing tier of this particular SKU.
  SBSku({
    this.capacity,
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': pulumi.Input.mapInputValue<SkuName, String>(name, (value) => value.value),
      'tier': ?pulumi.Input.mapOptionalInputValue<SkuTier, String>(tier, (value) => value.value),
    };
  }

  factory SBSku.fromMap(Map<String, dynamic> map) {
    return SBSku(
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      name: (SkuName.fromValue(map['name'] as String)).input(),
      tier: map['tier'] == null ? null : (SkuTier.fromValue(map['tier']! as String)).input(),
    );
  }
}

